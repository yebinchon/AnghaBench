; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_variant_discrim_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_variant_discrim_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@ada_variant_discrim_name.result = internal global i8* null, align 8
@ada_variant_discrim_name.result_len = internal global i64 0, align 8
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"___XVN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"___\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ada_variant_discrim_name(%struct.type* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i64 @TYPE_CODE(%struct.type* %8)
  %10 = load i64, i64* @TYPE_CODE_PTR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %13)
  store %struct.type* %14, %struct.type** %4, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %16, %struct.type** %4, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load %struct.type*, %struct.type** %4, align 8
  %19 = call i8* @ada_type_name(%struct.type* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %17
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %116

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = getelementptr inbounds i8, i8* %34, i64 -6
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %46, %29
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @DEPRECATED_STREQN(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %49

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  store i8* %48, i8** %6, align 8
  br label %36

49:                                               ; preds = %44, %36
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %116

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %85, %54
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  %60 = icmp ne i8* %57, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = icmp eq i8* %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %116

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  %71 = icmp ugt i8* %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -3
  %75 = call i64 @DEPRECATED_STREQN(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72, %67
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 -1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 46
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %72
  br label %88

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  store i8* %87, i8** %7, align 8
  br label %56

88:                                               ; preds = %83, %56
  %89 = load i8*, i8** @ada_variant_discrim_name.result, align 8
  %90 = load i64, i64* @ada_variant_discrim_name.result_len, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = add nsw i64 %95, 1
  %97 = trunc i64 %96 to i32
  %98 = call i32 @GROW_VECT(i8* %89, i64 %90, i32 %97)
  %99 = load i8*, i8** @ada_variant_discrim_name.result, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @strncpy(i8* %99, i8* %100, i32 %106)
  %108 = load i8*, i8** @ada_variant_discrim_name.result, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = getelementptr inbounds i8, i8* %108, i64 %113
  store i8 0, i8* %114, align 1
  %115 = load i8*, i8** @ada_variant_discrim_name.result, align 8
  store i8* %115, i8** %2, align 8
  br label %116

116:                                              ; preds = %88, %66, %53, %28
  %117 = load i8*, i8** %2, align 8
  ret i8* %117
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i8* @ada_type_name(%struct.type*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local i32 @GROW_VECT(i8*, i64, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
