; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipcperms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipcperms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32, i64, i64, i32, i32 }

@CAP_IPC_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcperms(%struct.kern_ipc_perm* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kern_ipc_perm*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = call i64 (...) @current_euid()
  store i64 %9, i64* %6, align 8
  %10 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %11 = call i32 @audit_ipc_obj(%struct.kern_ipc_perm* %10)
  %12 = load i16, i16* %5, align 2
  %13 = sext i16 %12 to i32
  %14 = ashr i32 %13, 6
  %15 = load i16, i16* %5, align 2
  %16 = sext i16 %15 to i32
  %17 = ashr i32 %16, 3
  %18 = or i32 %14, %17
  %19 = load i16, i16* %5, align 2
  %20 = sext i16 %19 to i32
  %21 = or i32 %18, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %23 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %27 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %33 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %2
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 6
  store i32 %38, i32* %8, align 4
  br label %55

39:                                               ; preds = %30
  %40 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %41 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @in_group_p(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %47 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @in_group_p(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 3
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = and i32 %59, 7
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @CAP_IPC_OWNER, align 4
  %64 = call i32 @capable(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %71

67:                                               ; preds = %62, %55
  %68 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %69 = load i16, i16* %5, align 2
  %70 = call i32 @security_ipc_permission(%struct.kern_ipc_perm* %68, i16 signext %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @current_euid(...) #1

declare dso_local i32 @audit_ipc_obj(%struct.kern_ipc_perm*) #1

declare dso_local i64 @in_group_p(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @security_ipc_permission(%struct.kern_ipc_perm*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
