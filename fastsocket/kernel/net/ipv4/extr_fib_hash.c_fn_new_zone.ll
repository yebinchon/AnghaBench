; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_new_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_new_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fn_zone = type { i32, i32, i32, %struct.fn_zone*, i32, i32 }
%struct.fn_hash = type { %struct.fn_zone**, %struct.fn_zone* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@fib_hash_lock = common dso_local global i32 0, align 4
@fib_hash_genid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fn_zone* (%struct.fn_hash*, i32)* @fn_new_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fn_zone* @fn_new_zone(%struct.fn_hash* %0, i32 %1) #0 {
  %3 = alloca %struct.fn_zone*, align 8
  %4 = alloca %struct.fn_hash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fn_zone*, align 8
  store %struct.fn_hash* %0, %struct.fn_hash** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.fn_zone* @kzalloc(i32 32, i32 %8)
  store %struct.fn_zone* %9, %struct.fn_zone** %7, align 8
  %10 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %11 = icmp ne %struct.fn_zone* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.fn_zone* null, %struct.fn_zone** %3, align 8
  br label %115

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %18 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %17, i32 0, i32 0
  store i32 16, i32* %18, align 8
  br label %22

19:                                               ; preds = %13
  %20 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %21 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %24 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %28 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %30 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @fz_hash_alloc(i32 %31)
  %33 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %34 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %36 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %22
  %40 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %41 = call i32 @kfree(%struct.fn_zone* %40)
  store %struct.fn_zone* null, %struct.fn_zone** %3, align 8
  br label %115

42:                                               ; preds = %22
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %45 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @inet_make_mask(i32 %46)
  %48 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %49 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %66, %42
  %53 = load i32, i32* %6, align 4
  %54 = icmp sle i32 %53, 32
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load %struct.fn_hash*, %struct.fn_hash** %4, align 8
  %57 = getelementptr inbounds %struct.fn_hash, %struct.fn_hash* %56, i32 0, i32 0
  %58 = load %struct.fn_zone**, %struct.fn_zone*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.fn_zone*, %struct.fn_zone** %58, i64 %60
  %62 = load %struct.fn_zone*, %struct.fn_zone** %61, align 8
  %63 = icmp ne %struct.fn_zone* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %69

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %52

69:                                               ; preds = %64, %52
  %70 = call i32 @write_lock_bh(i32* @fib_hash_lock)
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 32
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.fn_hash*, %struct.fn_hash** %4, align 8
  %75 = getelementptr inbounds %struct.fn_hash, %struct.fn_hash* %74, i32 0, i32 1
  %76 = load %struct.fn_zone*, %struct.fn_zone** %75, align 8
  %77 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %78 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %77, i32 0, i32 3
  store %struct.fn_zone* %76, %struct.fn_zone** %78, align 8
  %79 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %80 = load %struct.fn_hash*, %struct.fn_hash** %4, align 8
  %81 = getelementptr inbounds %struct.fn_hash, %struct.fn_hash* %80, i32 0, i32 1
  store %struct.fn_zone* %79, %struct.fn_zone** %81, align 8
  br label %103

82:                                               ; preds = %69
  %83 = load %struct.fn_hash*, %struct.fn_hash** %4, align 8
  %84 = getelementptr inbounds %struct.fn_hash, %struct.fn_hash* %83, i32 0, i32 0
  %85 = load %struct.fn_zone**, %struct.fn_zone*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.fn_zone*, %struct.fn_zone** %85, i64 %87
  %89 = load %struct.fn_zone*, %struct.fn_zone** %88, align 8
  %90 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %89, i32 0, i32 3
  %91 = load %struct.fn_zone*, %struct.fn_zone** %90, align 8
  %92 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %93 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %92, i32 0, i32 3
  store %struct.fn_zone* %91, %struct.fn_zone** %93, align 8
  %94 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %95 = load %struct.fn_hash*, %struct.fn_hash** %4, align 8
  %96 = getelementptr inbounds %struct.fn_hash, %struct.fn_hash* %95, i32 0, i32 0
  %97 = load %struct.fn_zone**, %struct.fn_zone*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.fn_zone*, %struct.fn_zone** %97, i64 %99
  %101 = load %struct.fn_zone*, %struct.fn_zone** %100, align 8
  %102 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %101, i32 0, i32 3
  store %struct.fn_zone* %94, %struct.fn_zone** %102, align 8
  br label %103

103:                                              ; preds = %82, %73
  %104 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  %105 = load %struct.fn_hash*, %struct.fn_hash** %4, align 8
  %106 = getelementptr inbounds %struct.fn_hash, %struct.fn_hash* %105, i32 0, i32 0
  %107 = load %struct.fn_zone**, %struct.fn_zone*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.fn_zone*, %struct.fn_zone** %107, i64 %109
  store %struct.fn_zone* %104, %struct.fn_zone** %110, align 8
  %111 = load i32, i32* @fib_hash_genid, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @fib_hash_genid, align 4
  %113 = call i32 @write_unlock_bh(i32* @fib_hash_lock)
  %114 = load %struct.fn_zone*, %struct.fn_zone** %7, align 8
  store %struct.fn_zone* %114, %struct.fn_zone** %3, align 8
  br label %115

115:                                              ; preds = %103, %39, %12
  %116 = load %struct.fn_zone*, %struct.fn_zone** %3, align 8
  ret %struct.fn_zone* %116
}

declare dso_local %struct.fn_zone* @kzalloc(i32, i32) #1

declare dso_local i32 @fz_hash_alloc(i32) #1

declare dso_local i32 @kfree(%struct.fn_zone*) #1

declare dso_local i32 @inet_make_mask(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
