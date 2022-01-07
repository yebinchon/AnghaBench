; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_add_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_add_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_pool = type { i32, %struct.constant** }
%struct.constant = type { %struct.constant*, i32, i32 }

@NR_C_MODES = common dso_local global i32 0, align 4
@constant_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.constant_pool*, i32, i32)* @s390_add_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_add_constant(%struct.constant_pool* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.constant_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.constant*, align 8
  %8 = alloca i32, align 4
  store %struct.constant_pool* %0, %struct.constant_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %23, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @NR_C_MODES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32*, i32** @constant_modes, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %26

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %9

26:                                               ; preds = %21, %9
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NR_C_MODES, align 4
  %29 = icmp ne i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load %struct.constant_pool*, %struct.constant_pool** %4, align 8
  %33 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %32, i32 0, i32 1
  %34 = load %struct.constant**, %struct.constant*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.constant*, %struct.constant** %34, i64 %36
  %38 = load %struct.constant*, %struct.constant** %37, align 8
  store %struct.constant* %38, %struct.constant** %7, align 8
  br label %39

39:                                               ; preds = %51, %26
  %40 = load %struct.constant*, %struct.constant** %7, align 8
  %41 = icmp ne %struct.constant* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.constant*, %struct.constant** %7, align 8
  %45 = getelementptr inbounds %struct.constant, %struct.constant* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @rtx_equal_p(i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %55

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.constant*, %struct.constant** %7, align 8
  %53 = getelementptr inbounds %struct.constant, %struct.constant* %52, i32 0, i32 0
  %54 = load %struct.constant*, %struct.constant** %53, align 8
  store %struct.constant* %54, %struct.constant** %7, align 8
  br label %39

55:                                               ; preds = %49, %39
  %56 = load %struct.constant*, %struct.constant** %7, align 8
  %57 = icmp eq %struct.constant* %56, null
  br i1 %57, label %58, label %91

58:                                               ; preds = %55
  %59 = call i64 @xmalloc(i32 16)
  %60 = inttoptr i64 %59 to %struct.constant*
  store %struct.constant* %60, %struct.constant** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.constant*, %struct.constant** %7, align 8
  %63 = getelementptr inbounds %struct.constant, %struct.constant* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = call i32 (...) @gen_label_rtx()
  %65 = load %struct.constant*, %struct.constant** %7, align 8
  %66 = getelementptr inbounds %struct.constant, %struct.constant* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.constant_pool*, %struct.constant_pool** %4, align 8
  %68 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %67, i32 0, i32 1
  %69 = load %struct.constant**, %struct.constant*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.constant*, %struct.constant** %69, i64 %71
  %73 = load %struct.constant*, %struct.constant** %72, align 8
  %74 = load %struct.constant*, %struct.constant** %7, align 8
  %75 = getelementptr inbounds %struct.constant, %struct.constant* %74, i32 0, i32 0
  store %struct.constant* %73, %struct.constant** %75, align 8
  %76 = load %struct.constant*, %struct.constant** %7, align 8
  %77 = load %struct.constant_pool*, %struct.constant_pool** %4, align 8
  %78 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %77, i32 0, i32 1
  %79 = load %struct.constant**, %struct.constant*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.constant*, %struct.constant** %79, i64 %81
  store %struct.constant* %76, %struct.constant** %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @GET_MODE_SIZE(i32 %83)
  %85 = load %struct.constant_pool*, %struct.constant_pool** %4, align 8
  %86 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  br label %91

91:                                               ; preds = %58, %55
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
