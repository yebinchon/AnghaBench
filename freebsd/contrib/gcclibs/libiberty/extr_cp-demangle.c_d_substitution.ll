; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_substitution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_substitution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_standard_sub_info = type { i8, i8*, i32, i8*, i32, i8*, i32 }
%struct.demangle_component = type { i32 }
%struct.d_info = type { i32, i32, i32, %struct.demangle_component*, %struct.demangle_component**, i32 }

@DMGL_VERBOSE = common dso_local global i32 0, align 4
@standard_subs = common dso_local global %struct.d_standard_sub_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, i32)* @d_substitution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_substitution(%struct.d_info* %0, i32 %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.d_standard_sub_info*, align 8
  %10 = alloca %struct.d_standard_sub_info*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.d_info*, %struct.d_info** %4, align 8
  %15 = call i32 @d_check_char(%struct.d_info* %14, i8 signext 83)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %186

18:                                               ; preds = %2
  %19 = load %struct.d_info*, %struct.d_info** %4, align 8
  %20 = call signext i8 @d_next_char(%struct.d_info* %19)
  store i8 %20, i8* %6, align 1
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 95
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load i8, i8* %6, align 1
  %26 = call i64 @IS_DIGIT(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8, i8* %6, align 1
  %30 = call i64 @IS_UPPER(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %95

32:                                               ; preds = %28, %24, %18
  store i32 0, i32* %7, align 4
  %33 = load i8, i8* %6, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 95
  br i1 %35, label %36, label %76

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %69, %36
  %38 = load i8, i8* %6, align 1
  %39 = call i64 @IS_DIGIT(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %42, 36
  %44 = load i8, i8* %6, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %43, %45
  %47 = sub nsw i32 %46, 48
  store i32 %47, i32* %7, align 4
  br label %62

48:                                               ; preds = %37
  %49 = load i8, i8* %6, align 1
  %50 = call i64 @IS_UPPER(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 36
  %55 = load i8, i8* %6, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %54, %56
  %58 = sub nsw i32 %57, 65
  %59 = add nsw i32 %58, 10
  store i32 %59, i32* %7, align 4
  br label %61

60:                                               ; preds = %48
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %186

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %186

66:                                               ; preds = %62
  %67 = load %struct.d_info*, %struct.d_info** %4, align 8
  %68 = call signext i8 @d_next_char(%struct.d_info* %67)
  store i8 %68, i8* %6, align 1
  br label %69

69:                                               ; preds = %66
  %70 = load i8, i8* %6, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 95
  br i1 %72, label %37, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %32
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.d_info*, %struct.d_info** %4, align 8
  %79 = getelementptr inbounds %struct.d_info, %struct.d_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %186

83:                                               ; preds = %76
  %84 = load %struct.d_info*, %struct.d_info** %4, align 8
  %85 = getelementptr inbounds %struct.d_info, %struct.d_info* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.d_info*, %struct.d_info** %4, align 8
  %89 = getelementptr inbounds %struct.d_info, %struct.d_info* %88, i32 0, i32 4
  %90 = load %struct.demangle_component**, %struct.demangle_component*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.demangle_component*, %struct.demangle_component** %90, i64 %92
  %94 = load %struct.demangle_component*, %struct.demangle_component** %93, align 8
  store %struct.demangle_component* %94, %struct.demangle_component** %3, align 8
  br label %186

95:                                               ; preds = %28
  %96 = load %struct.d_info*, %struct.d_info** %4, align 8
  %97 = getelementptr inbounds %struct.d_info, %struct.d_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DMGL_VERBOSE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load %struct.d_info*, %struct.d_info** %4, align 8
  %110 = call signext i8 @d_peek_char(%struct.d_info* %109)
  store i8 %110, i8* %11, align 1
  %111 = load i8, i8* %11, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 67
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = load i8, i8* %11, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 68
  br i1 %117, label %118, label %119

118:                                              ; preds = %114, %108
  store i32 1, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %114
  br label %120

120:                                              ; preds = %119, %105, %95
  %121 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** @standard_subs, align 8
  %122 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %121, i64 0
  %123 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %122, i64 0
  store %struct.d_standard_sub_info* %123, %struct.d_standard_sub_info** %10, align 8
  %124 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** @standard_subs, align 8
  %125 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %124, i64 0
  store %struct.d_standard_sub_info* %125, %struct.d_standard_sub_info** %9, align 8
  br label %126

126:                                              ; preds = %182, %120
  %127 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %9, align 8
  %128 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %129 = icmp ult %struct.d_standard_sub_info* %127, %128
  br i1 %129, label %130, label %185

130:                                              ; preds = %126
  %131 = load i8, i8* %6, align 1
  %132 = sext i8 %131 to i32
  %133 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %9, align 8
  %134 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %133, i32 0, i32 0
  %135 = load i8, i8* %134, align 8
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %132, %136
  br i1 %137, label %138, label %181

138:                                              ; preds = %130
  %139 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %9, align 8
  %140 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load %struct.d_info*, %struct.d_info** %4, align 8
  %145 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %9, align 8
  %146 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %9, align 8
  %149 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call %struct.demangle_component* @d_make_sub(%struct.d_info* %144, i8* %147, i32 %150)
  %152 = load %struct.d_info*, %struct.d_info** %4, align 8
  %153 = getelementptr inbounds %struct.d_info, %struct.d_info* %152, i32 0, i32 3
  store %struct.demangle_component* %151, %struct.demangle_component** %153, align 8
  br label %154

154:                                              ; preds = %143, %138
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %9, align 8
  %159 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %12, align 8
  %161 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %9, align 8
  %162 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %13, align 4
  br label %171

164:                                              ; preds = %154
  %165 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %9, align 8
  %166 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %165, i32 0, i32 5
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %12, align 8
  %168 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %9, align 8
  %169 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %164, %157
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.d_info*, %struct.d_info** %4, align 8
  %174 = getelementptr inbounds %struct.d_info, %struct.d_info* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load %struct.d_info*, %struct.d_info** %4, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call %struct.demangle_component* @d_make_sub(%struct.d_info* %177, i8* %178, i32 %179)
  store %struct.demangle_component* %180, %struct.demangle_component** %3, align 8
  br label %186

181:                                              ; preds = %130
  br label %182

182:                                              ; preds = %181
  %183 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %9, align 8
  %184 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %183, i32 1
  store %struct.d_standard_sub_info* %184, %struct.d_standard_sub_info** %9, align 8
  br label %126

185:                                              ; preds = %126
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %186

186:                                              ; preds = %185, %171, %83, %82, %65, %60, %17
  %187 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %187
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local signext i8 @d_next_char(%struct.d_info*) #1

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local i64 @IS_UPPER(i8 signext) #1

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_sub(%struct.d_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
