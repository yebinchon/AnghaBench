; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_compare_privheads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_compare_privheads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.privhead = type { i64, i64, i64, i64, i64, i64, i32 }

@GUID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.privhead*, %struct.privhead*)* @ldm_compare_privheads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_compare_privheads(%struct.privhead* %0, %struct.privhead* %1) #0 {
  %3 = alloca %struct.privhead*, align 8
  %4 = alloca %struct.privhead*, align 8
  store %struct.privhead* %0, %struct.privhead** %3, align 8
  store %struct.privhead* %1, %struct.privhead** %4, align 8
  %5 = load %struct.privhead*, %struct.privhead** %3, align 8
  %6 = icmp ne %struct.privhead* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.privhead*, %struct.privhead** %4, align 8
  %9 = icmp ne %struct.privhead* %8, null
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ true, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.privhead*, %struct.privhead** %3, align 8
  %16 = getelementptr inbounds %struct.privhead, %struct.privhead* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.privhead*, %struct.privhead** %4, align 8
  %19 = getelementptr inbounds %struct.privhead, %struct.privhead* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %11
  %23 = load %struct.privhead*, %struct.privhead** %3, align 8
  %24 = getelementptr inbounds %struct.privhead, %struct.privhead* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.privhead*, %struct.privhead** %4, align 8
  %27 = getelementptr inbounds %struct.privhead, %struct.privhead* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %22
  %31 = load %struct.privhead*, %struct.privhead** %3, align 8
  %32 = getelementptr inbounds %struct.privhead, %struct.privhead* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.privhead*, %struct.privhead** %4, align 8
  %35 = getelementptr inbounds %struct.privhead, %struct.privhead* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %73

38:                                               ; preds = %30
  %39 = load %struct.privhead*, %struct.privhead** %3, align 8
  %40 = getelementptr inbounds %struct.privhead, %struct.privhead* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.privhead*, %struct.privhead** %4, align 8
  %43 = getelementptr inbounds %struct.privhead, %struct.privhead* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %38
  %47 = load %struct.privhead*, %struct.privhead** %3, align 8
  %48 = getelementptr inbounds %struct.privhead, %struct.privhead* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.privhead*, %struct.privhead** %4, align 8
  %51 = getelementptr inbounds %struct.privhead, %struct.privhead* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %46
  %55 = load %struct.privhead*, %struct.privhead** %3, align 8
  %56 = getelementptr inbounds %struct.privhead, %struct.privhead* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.privhead*, %struct.privhead** %4, align 8
  %59 = getelementptr inbounds %struct.privhead, %struct.privhead* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load %struct.privhead*, %struct.privhead** %3, align 8
  %64 = getelementptr inbounds %struct.privhead, %struct.privhead* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.privhead*, %struct.privhead** %4, align 8
  %67 = getelementptr inbounds %struct.privhead, %struct.privhead* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GUID_SIZE, align 4
  %70 = call i32 @memcmp(i32 %65, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %62, %54, %46, %38, %30, %22, %11
  %74 = phi i1 [ false, %54 ], [ false, %46 ], [ false, %38 ], [ false, %30 ], [ false, %22 ], [ false, %11 ], [ %72, %62 ]
  %75 = zext i1 %74 to i32
  ret i32 %75
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
