; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_maybe_warn_about_overly_private_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_maybe_warn_about_overly_private_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_ctor_dtor_privacy = common dso_local global i32 0, align 4
@access_private_node = common dso_local global i64 0, align 8
@OPT_Wctor_dtor_privacy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"all member functions in class %qT are private\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"%q#T only defines a private destructor and has no friends\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"%q#T only defines private constructors and has no friends\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @maybe_warn_about_overly_private_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_warn_about_overly_private_class(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @warn_ctor_dtor_privacy, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @CLASSTYPE_FRIEND_CLASSES(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @TYPE_MAIN_DECL(i64 %17)
  %19 = call i64 @DECL_FRIENDLIST(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @CLASSTYPE_TEMPLATE_INSTANTIATION(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %16, %12, %1
  br label %150

26:                                               ; preds = %21
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @TYPE_METHODS(i64 %27)
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %58, %26
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @DECL_ARTIFICIAL(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @TREE_PRIVATE(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @DECL_STATIC_FUNCTION_P(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %150

45:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %56

46:                                               ; preds = %36
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @DECL_CONSTRUCTOR_P(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @DECL_DESTRUCTOR_P(i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %50, %46
  br label %56

56:                                               ; preds = %55, %45
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @TREE_CHAIN(i64 %59)
  store i64 %60, i64* %5, align 8
  br label %29

61:                                               ; preds = %29
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = load i64, i64* %2, align 8
  %69 = call i64 @TYPE_BINFO(i64 %68)
  store i64 %69, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %83, %67
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @BINFO_N_BASE_BINFOS(i64 %72)
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @BINFO_BASE_ACCESS(i64 %76, i32 %77)
  %79 = load i64, i64* @access_private_node, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %86

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %70

86:                                               ; preds = %81, %70
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @OPT_Wctor_dtor_privacy, align 4
  %91 = load i64, i64* %2, align 8
  %92 = call i32 @warning(i32 %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %91)
  br label %150

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %64, %61
  %95 = load i64, i64* %2, align 8
  %96 = call i64 @CLASSTYPE_DESTRUCTORS(i64 %95)
  store i64 %96, i64* %5, align 8
  %97 = load i64, i64* %5, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i64, i64* %5, align 8
  %101 = call i64 @TREE_PRIVATE(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* @OPT_Wctor_dtor_privacy, align 4
  %105 = load i64, i64* %2, align 8
  %106 = call i32 @warning(i32 %104, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  br label %150

107:                                              ; preds = %99, %94
  %108 = load i64, i64* %2, align 8
  %109 = call i64 @TYPE_HAS_CONSTRUCTOR(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %150

111:                                              ; preds = %107
  %112 = load i64, i64* %2, align 8
  %113 = call i32 @CLASSTYPE_LAZY_DEFAULT_CTOR(i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i64, i64* %2, align 8
  %117 = call i32 @CLASSTYPE_LAZY_COPY_CTOR(i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %150, label %119

119:                                              ; preds = %115, %111
  store i32 0, i32* %8, align 4
  %120 = load i64, i64* %2, align 8
  %121 = call i32 @TYPE_HAS_INIT_REF(i64 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  store i32 1, i32* %8, align 4
  br label %142

124:                                              ; preds = %119
  %125 = load i64, i64* %2, align 8
  %126 = call i64 @CLASSTYPE_CONSTRUCTORS(i64 %125)
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %138, %124
  %128 = load i64, i64* %5, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i64, i64* %5, align 8
  %132 = call i64 @OVL_CURRENT(i64 %131)
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %9, align 8
  %134 = call i64 @TREE_PRIVATE(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  store i32 1, i32* %8, align 4
  br label %141

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %5, align 8
  %140 = call i64 @OVL_NEXT(i64 %139)
  store i64 %140, i64* %5, align 8
  br label %127

141:                                              ; preds = %136, %127
  br label %142

142:                                              ; preds = %141, %123
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* @OPT_Wctor_dtor_privacy, align 4
  %147 = load i64, i64* %2, align 8
  %148 = call i32 @warning(i32 %146, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %147)
  br label %150

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %25, %44, %89, %103, %145, %149, %115, %107
  ret void
}

declare dso_local i64 @CLASSTYPE_FRIEND_CLASSES(i64) #1

declare dso_local i64 @DECL_FRIENDLIST(i32) #1

declare dso_local i32 @TYPE_MAIN_DECL(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INSTANTIATION(i64) #1

declare dso_local i64 @TYPE_METHODS(i64) #1

declare dso_local i32 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @TREE_PRIVATE(i64) #1

declare dso_local i64 @DECL_STATIC_FUNCTION_P(i64) #1

declare dso_local i32 @DECL_CONSTRUCTOR_P(i64) #1

declare dso_local i32 @DECL_DESTRUCTOR_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i32 @BINFO_N_BASE_BINFOS(i64) #1

declare dso_local i64 @BINFO_BASE_ACCESS(i64, i32) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

declare dso_local i64 @CLASSTYPE_DESTRUCTORS(i64) #1

declare dso_local i64 @TYPE_HAS_CONSTRUCTOR(i64) #1

declare dso_local i32 @CLASSTYPE_LAZY_DEFAULT_CTOR(i64) #1

declare dso_local i32 @CLASSTYPE_LAZY_COPY_CTOR(i64) #1

declare dso_local i32 @TYPE_HAS_INIT_REF(i64) #1

declare dso_local i64 @CLASSTYPE_CONSTRUCTORS(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
