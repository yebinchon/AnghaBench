; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_get_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.elt_loc_list* }
%struct.elt_loc_list = type { i32, %struct.elt_loc_list* }

@VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.elt_loc_list*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @GET_CODE(i32 %6)
  %8 = load i64, i64* @VALUE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %2, align 4
  br label %81

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_3__* @CSELIB_VAL_PTR(i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %79

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.elt_loc_list*, %struct.elt_loc_list** %19, align 8
  store %struct.elt_loc_list* %20, %struct.elt_loc_list** %5, align 8
  br label %21

21:                                               ; preds = %35, %17
  %22 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %23 = icmp ne %struct.elt_loc_list* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %26 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @CONSTANT_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %32 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %2, align 4
  br label %81

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %37 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %36, i32 0, i32 1
  %38 = load %struct.elt_loc_list*, %struct.elt_loc_list** %37, align 8
  store %struct.elt_loc_list* %38, %struct.elt_loc_list** %5, align 8
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.elt_loc_list*, %struct.elt_loc_list** %41, align 8
  store %struct.elt_loc_list* %42, %struct.elt_loc_list** %5, align 8
  br label %43

43:                                               ; preds = %63, %39
  %44 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %45 = icmp ne %struct.elt_loc_list* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %48 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @REG_P(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %46
  %53 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %54 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @MEM_P(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %60 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %2, align 4
  br label %81

62:                                               ; preds = %52, %46
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %65 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %64, i32 0, i32 1
  %66 = load %struct.elt_loc_list*, %struct.elt_loc_list** %65, align 8
  store %struct.elt_loc_list* %66, %struct.elt_loc_list** %5, align 8
  br label %43

67:                                               ; preds = %43
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.elt_loc_list*, %struct.elt_loc_list** %69, align 8
  %71 = icmp ne %struct.elt_loc_list* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.elt_loc_list*, %struct.elt_loc_list** %74, align 8
  %76 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %2, align 4
  br label %81

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %12
  %80 = load i32, i32* %3, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %72, %58, %30, %10
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local %struct.TYPE_3__* @CSELIB_VAL_PTR(i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @MEM_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
