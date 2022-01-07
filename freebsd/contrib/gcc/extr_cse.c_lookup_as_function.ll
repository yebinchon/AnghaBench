; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_lookup_as_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_lookup_as_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i32, %struct.table_elt*, %struct.table_elt* }

@VOIDmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @lookup_as_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_as_function(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.table_elt*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @VOIDmode, align 4
  %10 = call i32 @SAFE_HASH(i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GET_MODE(i32 %11)
  %13 = call %struct.table_elt* @lookup(i32 %7, i32 %10, i32 %12)
  store %struct.table_elt* %13, %struct.table_elt** %6, align 8
  %14 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %15 = icmp eq %struct.table_elt* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CONST_INT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @GET_MODE(i32 %21)
  %23 = call i64 @GET_MODE_SIZE(i32 %22)
  %24 = load i32, i32* @word_mode, align 4
  %25 = call i64 @GET_MODE_SIZE(i32 %24)
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @copy_rtx(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @word_mode, align 4
  %32 = call i32 @PUT_MODE(i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @VOIDmode, align 4
  %36 = call i32 @SAFE_HASH(i32 %34, i32 %35)
  %37 = load i32, i32* @word_mode, align 4
  %38 = call %struct.table_elt* @lookup(i32 %33, i32 %36, i32 %37)
  store %struct.table_elt* %38, %struct.table_elt** %6, align 8
  br label %39

39:                                               ; preds = %27, %20, %16, %2
  %40 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %41 = icmp eq %struct.table_elt* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %76

43:                                               ; preds = %39
  %44 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %45 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %44, i32 0, i32 2
  %46 = load %struct.table_elt*, %struct.table_elt** %45, align 8
  store %struct.table_elt* %46, %struct.table_elt** %6, align 8
  br label %47

47:                                               ; preds = %71, %43
  %48 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %49 = icmp ne %struct.table_elt* %48, null
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %52 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @GET_CODE(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %59 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %62 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @exp_equiv_p(i32 %60, i32 %63, i32 1, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %68 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %3, align 4
  br label %76

70:                                               ; preds = %57, %50
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %73 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %72, i32 0, i32 1
  %74 = load %struct.table_elt*, %struct.table_elt** %73, align 8
  store %struct.table_elt* %74, %struct.table_elt** %6, align 8
  br label %47

75:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %66, %42
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.table_elt* @lookup(i32, i32, i32) #1

declare dso_local i32 @SAFE_HASH(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @copy_rtx(i32) #1

declare dso_local i32 @PUT_MODE(i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @exp_equiv_p(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
