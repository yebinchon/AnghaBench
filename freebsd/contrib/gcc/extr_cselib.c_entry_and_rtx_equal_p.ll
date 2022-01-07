; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_entry_and_rtx_equal_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_entry_and_rtx_equal_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elt_loc_list = type { i32, %struct.elt_loc_list* }
%struct.TYPE_4__ = type { %struct.elt_loc_list*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CONST_INT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @entry_and_rtx_equal_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entry_and_rtx_equal_p(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elt_loc_list*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @GET_MODE(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @GET_CODE(i32 %16)
  %18 = load i64, i64* @CONST_INT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @VOIDmode, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @GET_CODE(i32 %25)
  %27 = load i64, i64* @CONST_DOUBLE, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ true, %20 ], [ %28, %24 ]
  br label %31

31:                                               ; preds = %29, %2
  %32 = phi i1 [ false, %2 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @GET_MODE(i32 %39)
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %84

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @GET_CODE(i32 %44)
  %46 = load i64, i64* @CONST, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @XEXP(i32 %49, i32 0)
  %51 = call i64 @GET_CODE(i32 %50)
  %52 = load i64, i64* @CONST_INT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @XEXP(i32 %55, i32 0)
  %57 = call i64 @GET_CODE(i32 %56)
  %58 = load i64, i64* @CONST_DOUBLE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @XEXP(i32 %61, i32 0)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %54, %43
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.elt_loc_list*, %struct.elt_loc_list** %65, align 8
  store %struct.elt_loc_list* %66, %struct.elt_loc_list** %6, align 8
  br label %67

67:                                               ; preds = %79, %63
  %68 = load %struct.elt_loc_list*, %struct.elt_loc_list** %6, align 8
  %69 = icmp ne %struct.elt_loc_list* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.elt_loc_list*, %struct.elt_loc_list** %6, align 8
  %72 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @rtx_equal_for_cselib_p(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %84

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.elt_loc_list*, %struct.elt_loc_list** %6, align 8
  %81 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %80, i32 0, i32 1
  %82 = load %struct.elt_loc_list*, %struct.elt_loc_list** %81, align 8
  store %struct.elt_loc_list* %82, %struct.elt_loc_list** %6, align 8
  br label %67

83:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %77, %42
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @rtx_equal_for_cselib_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
