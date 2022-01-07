; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_init_num_sign_bit_copies_in_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_init_num_sign_bit_copies_in_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i32)* }

@MODE_INT = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UNKNOWN = common dso_local global i64 0, align 8
@SIGN_EXTEND = common dso_local global i64 0, align 8
@num_sign_bit_copies_in_rep = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_num_sign_bit_copies_in_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_num_sign_bit_copies_in_rep() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MODE_INT, align 4
  %6 = call i32 @GET_CLASS_NARROWEST_MODE(i32 %5)
  store i32 %6, i32* %2, align 4
  br label %7

7:                                                ; preds = %84, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @VOIDmode, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %87

11:                                               ; preds = %7
  %12 = load i32, i32* @MODE_INT, align 4
  %13 = call i32 @GET_CLASS_NARROWEST_MODE(i32 %12)
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %80, %11
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %14
  %19 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i64 %19(i32 %20, i32 %21)
  %23 = load i64, i64* @UNKNOWN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @GET_MODE_WIDER_MODE(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %27, %28
  br label %30

30:                                               ; preds = %25, %18
  %31 = phi i1 [ true, %18 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i32, i32* %1, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %76, %30
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @GET_MODE_WIDER_MODE(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i64 %42(i32 %43, i32 %44)
  %46 = load i64, i64* @SIGN_EXTEND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %39
  %49 = load i64**, i64*** @num_sign_bit_copies_in_rep, align 8
  %50 = load i32, i32* %2, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64*, i64** %49, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %1, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %48, %39
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @GET_MODE_BITSIZE(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @GET_MODE_BITSIZE(i32 %62)
  %64 = sub nsw i64 %61, %63
  %65 = load i64**, i64*** @num_sign_bit_copies_in_rep, align 8
  %66 = load i32, i32* %2, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64*, i64** %65, i64 %67
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %1, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %64
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %59, %48
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @GET_MODE_WIDER_MODE(i32 %77)
  store i32 %78, i32* %3, align 4
  br label %35

79:                                               ; preds = %35
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @GET_MODE_WIDER_MODE(i32 %81)
  store i32 %82, i32* %1, align 4
  br label %14

83:                                               ; preds = %14
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @GET_MODE_WIDER_MODE(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %7

87:                                               ; preds = %7
  ret void
}

declare dso_local i32 @GET_CLASS_NARROWEST_MODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
