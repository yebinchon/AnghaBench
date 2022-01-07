; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_declspecs_add_scspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_declspecs_add_scspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_declspecs = type { i32, i32, i32, i32, i64 }

@csc_none = common dso_local global i32 0, align 4
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@extra_warnings = common dso_local global i64 0, align 8
@OPT_Wextra = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%qE is not at beginning of declaration\00", align 1
@csc_auto = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%<__thread%> used with %<auto%>\00", align 1
@csc_register = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%<__thread%> used with %<register%>\00", align 1
@csc_typedef = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%<__thread%> used with %<typedef%>\00", align 1
@csc_extern = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%<__thread%> before %<extern%>\00", align 1
@csc_static = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"%<__thread%> before %<static%>\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"duplicate %qE\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"multiple storage classes in declaration specifiers\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%<__thread%> used with %qE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.c_declspecs* @declspecs_add_scspec(%struct.c_declspecs* %0, i32 %1) #0 {
  %3 = alloca %struct.c_declspecs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.c_declspecs* %0, %struct.c_declspecs** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @csc_none, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %10 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @IDENTIFIER_NODE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @C_IS_RESERVED_WORD(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @C_RID_CODE(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i64, i64* @extra_warnings, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %29 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @OPT_Wextra, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @warning(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %27, %19
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %98 [
    i32 132, label %38
    i32 129, label %41
    i32 134, label %74
    i32 133, label %76
    i32 131, label %85
    i32 130, label %87
    i32 128, label %96
  ]

38:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %39 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %40 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %100

41:                                               ; preds = %36
  %42 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %43 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %46 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @csc_auto, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %73

52:                                               ; preds = %41
  %53 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %54 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @csc_register, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %72

60:                                               ; preds = %52
  %61 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %62 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @csc_typedef, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %71

68:                                               ; preds = %60
  %69 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %70 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %66
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %50
  br label %100

74:                                               ; preds = %36
  %75 = load i32, i32* @csc_auto, align 4
  store i32 %75, i32* %6, align 4
  br label %100

76:                                               ; preds = %36
  %77 = load i32, i32* @csc_extern, align 4
  store i32 %77, i32* %6, align 4
  %78 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %79 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %76
  br label %100

85:                                               ; preds = %36
  %86 = load i32, i32* @csc_register, align 4
  store i32 %86, i32* %6, align 4
  br label %100

87:                                               ; preds = %36
  %88 = load i32, i32* @csc_static, align 4
  store i32 %88, i32* %6, align 4
  %89 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %90 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %87
  br label %100

96:                                               ; preds = %36
  %97 = load i32, i32* @csc_typedef, align 4
  store i32 %97, i32* %6, align 4
  br label %100

98:                                               ; preds = %36
  %99 = call i32 (...) @gcc_unreachable()
  br label %100

100:                                              ; preds = %98, %96, %95, %85, %84, %74, %73, %38
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @csc_none, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %107 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 1, i32* %7, align 4
  br label %111

111:                                              ; preds = %110, %104, %100
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @csc_none, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %158

121:                                              ; preds = %117
  %122 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %123 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @csc_none, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %130 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  br label %157

135:                                              ; preds = %127, %121
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %138 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @csc_extern, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %135
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @csc_static, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %148 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i32, i32* %4, align 4
  %153 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %152)
  %154 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %155 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %154, i32 0, i32 2
  store i32 0, i32* %155, align 8
  br label %156

156:                                              ; preds = %151, %146, %142, %135
  br label %157

157:                                              ; preds = %156, %133
  br label %158

158:                                              ; preds = %157, %117
  %159 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  ret %struct.c_declspecs* %159
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @C_IS_RESERVED_WORD(i32) #1

declare dso_local i32 @C_RID_CODE(i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
