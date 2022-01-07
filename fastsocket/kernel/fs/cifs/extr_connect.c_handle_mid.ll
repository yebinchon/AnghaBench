; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_handle_mid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_handle_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32, i8*, i32, i32 }
%struct.TCP_Server_Info = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [29 x i8] c"1st trans2 resp needs bigbuf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mid_q_entry*, %struct.TCP_Server_Info*, i8*, i32)* @handle_mid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_mid(%struct.mid_q_entry* %0, %struct.TCP_Server_Info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mid_q_entry*, align 8
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %5, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %4
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @check2ndT2(i8* %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %17 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %19 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %25 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @coalesce_t2(i8* %23, i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %80

31:                                               ; preds = %22
  %32 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %33 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  %34 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %35 = load i32, i32* %8, align 4
  call void @dequeue_mid(%struct.mid_q_entry* %34, i32 %35)
  br label %80

36:                                               ; preds = %15
  %37 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %38 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %51

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %46 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %48 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %50 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %43, %41
  br label %80

52:                                               ; preds = %11, %4
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %55 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %57 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %60 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %62 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %52
  %66 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %67 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %72 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  br label %76

73:                                               ; preds = %65
  %74 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %75 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %52
  %78 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %79 = load i32, i32* %8, align 4
  call void @dequeue_mid(%struct.mid_q_entry* %78, i32 %79)
  br label %80

80:                                               ; preds = %77, %51, %31, %30
  ret void
}

declare dso_local i64 @check2ndT2(i8*) #1

declare dso_local i32 @coalesce_t2(i8*, i8*) #1

declare dso_local void @dequeue_mid(%struct.mid_q_entry*, i32) #1

declare dso_local i32 @cERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
