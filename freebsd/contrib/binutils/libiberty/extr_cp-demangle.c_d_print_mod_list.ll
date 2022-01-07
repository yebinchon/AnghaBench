; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_mod_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_mod_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32, %struct.d_print_template*, %struct.d_print_mod* }
%struct.d_print_template = type { i32 }
%struct.d_print_mod = type { i32, %struct.d_print_mod*, %struct.demangle_component*, %struct.d_print_template* }
%struct.demangle_component = type { i64 }

@DEMANGLE_COMPONENT_RESTRICT_THIS = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_VOLATILE_THIS = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_CONST_THIS = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_FUNCTION_TYPE = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_ARRAY_TYPE = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_LOCAL_NAME = common dso_local global i64 0, align 8
@DMGL_JAVA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, %struct.d_print_mod*, i32)* @d_print_mod_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_mod_list(%struct.d_print_info* %0, %struct.d_print_mod* %1, i32 %2) #0 {
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca %struct.d_print_mod*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.d_print_template*, align 8
  %8 = alloca %struct.d_print_mod*, align 8
  %9 = alloca %struct.demangle_component*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store %struct.d_print_mod* %1, %struct.d_print_mod** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %11 = icmp eq %struct.d_print_mod* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %14 = call i64 @d_print_saw_error(%struct.d_print_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  br label %191

17:                                               ; preds = %12
  %18 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %19 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %22
  %26 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %27 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %26, i32 0, i32 2
  %28 = load %struct.demangle_component*, %struct.demangle_component** %27, align 8
  %29 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DEMANGLE_COMPONENT_RESTRICT_THIS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %49, label %33

33:                                               ; preds = %25
  %34 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %35 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %34, i32 0, i32 2
  %36 = load %struct.demangle_component*, %struct.demangle_component** %35, align 8
  %37 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DEMANGLE_COMPONENT_VOLATILE_THIS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %43 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %42, i32 0, i32 2
  %44 = load %struct.demangle_component*, %struct.demangle_component** %43, align 8
  %45 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DEMANGLE_COMPONENT_CONST_THIS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41, %33, %25, %17
  %50 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %51 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %52 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %51, i32 0, i32 1
  %53 = load %struct.d_print_mod*, %struct.d_print_mod** %52, align 8
  %54 = load i32, i32* %6, align 4
  call void @d_print_mod_list(%struct.d_print_info* %50, %struct.d_print_mod* %53, i32 %54)
  br label %191

55:                                               ; preds = %41, %22
  %56 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %57 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %59 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %58, i32 0, i32 1
  %60 = load %struct.d_print_template*, %struct.d_print_template** %59, align 8
  store %struct.d_print_template* %60, %struct.d_print_template** %7, align 8
  %61 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %62 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %61, i32 0, i32 3
  %63 = load %struct.d_print_template*, %struct.d_print_template** %62, align 8
  %64 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %65 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %64, i32 0, i32 1
  store %struct.d_print_template* %63, %struct.d_print_template** %65, align 8
  %66 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %67 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %66, i32 0, i32 2
  %68 = load %struct.demangle_component*, %struct.demangle_component** %67, align 8
  %69 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DEMANGLE_COMPONENT_FUNCTION_TYPE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %55
  %74 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %75 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %76 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %75, i32 0, i32 2
  %77 = load %struct.demangle_component*, %struct.demangle_component** %76, align 8
  %78 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %79 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %78, i32 0, i32 1
  %80 = load %struct.d_print_mod*, %struct.d_print_mod** %79, align 8
  %81 = call i32 @d_print_function_type(%struct.d_print_info* %74, %struct.demangle_component* %77, %struct.d_print_mod* %80)
  %82 = load %struct.d_print_template*, %struct.d_print_template** %7, align 8
  %83 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %84 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %83, i32 0, i32 1
  store %struct.d_print_template* %82, %struct.d_print_template** %84, align 8
  br label %191

85:                                               ; preds = %55
  %86 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %87 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %86, i32 0, i32 2
  %88 = load %struct.demangle_component*, %struct.demangle_component** %87, align 8
  %89 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DEMANGLE_COMPONENT_ARRAY_TYPE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %85
  %94 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %95 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %96 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %95, i32 0, i32 2
  %97 = load %struct.demangle_component*, %struct.demangle_component** %96, align 8
  %98 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %99 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %98, i32 0, i32 1
  %100 = load %struct.d_print_mod*, %struct.d_print_mod** %99, align 8
  %101 = call i32 @d_print_array_type(%struct.d_print_info* %94, %struct.demangle_component* %97, %struct.d_print_mod* %100)
  %102 = load %struct.d_print_template*, %struct.d_print_template** %7, align 8
  %103 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %104 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %103, i32 0, i32 1
  store %struct.d_print_template* %102, %struct.d_print_template** %104, align 8
  br label %191

105:                                              ; preds = %85
  %106 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %107 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %106, i32 0, i32 2
  %108 = load %struct.demangle_component*, %struct.demangle_component** %107, align 8
  %109 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DEMANGLE_COMPONENT_LOCAL_NAME, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %175

113:                                              ; preds = %105
  %114 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %115 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %114, i32 0, i32 2
  %116 = load %struct.d_print_mod*, %struct.d_print_mod** %115, align 8
  store %struct.d_print_mod* %116, %struct.d_print_mod** %8, align 8
  %117 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %118 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %117, i32 0, i32 2
  store %struct.d_print_mod* null, %struct.d_print_mod** %118, align 8
  %119 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %120 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %121 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %120, i32 0, i32 2
  %122 = load %struct.demangle_component*, %struct.demangle_component** %121, align 8
  %123 = call %struct.demangle_component* @d_left(%struct.demangle_component* %122)
  %124 = call i32 @d_print_comp(%struct.d_print_info* %119, %struct.demangle_component* %123)
  %125 = load %struct.d_print_mod*, %struct.d_print_mod** %8, align 8
  %126 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %127 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %126, i32 0, i32 2
  store %struct.d_print_mod* %125, %struct.d_print_mod** %127, align 8
  %128 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %129 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @DMGL_JAVA, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %113
  %135 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %136 = call i32 @d_append_string(%struct.d_print_info* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %140

137:                                              ; preds = %113
  %138 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %139 = call i32 @d_append_char(%struct.d_print_info* %138, i8 signext 46)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %142 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %141, i32 0, i32 2
  %143 = load %struct.demangle_component*, %struct.demangle_component** %142, align 8
  %144 = call %struct.demangle_component* @d_right(%struct.demangle_component* %143)
  store %struct.demangle_component* %144, %struct.demangle_component** %9, align 8
  br label %145

145:                                              ; preds = %165, %140
  %146 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %147 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @DEMANGLE_COMPONENT_RESTRICT_THIS, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %163, label %151

151:                                              ; preds = %145
  %152 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %153 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DEMANGLE_COMPONENT_VOLATILE_THIS, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %159 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @DEMANGLE_COMPONENT_CONST_THIS, align 8
  %162 = icmp eq i64 %160, %161
  br label %163

163:                                              ; preds = %157, %151, %145
  %164 = phi i1 [ true, %151 ], [ true, %145 ], [ %162, %157 ]
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %167 = call %struct.demangle_component* @d_left(%struct.demangle_component* %166)
  store %struct.demangle_component* %167, %struct.demangle_component** %9, align 8
  br label %145

168:                                              ; preds = %163
  %169 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %170 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %171 = call i32 @d_print_comp(%struct.d_print_info* %169, %struct.demangle_component* %170)
  %172 = load %struct.d_print_template*, %struct.d_print_template** %7, align 8
  %173 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %174 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %173, i32 0, i32 1
  store %struct.d_print_template* %172, %struct.d_print_template** %174, align 8
  br label %191

175:                                              ; preds = %105
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %179 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %180 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %179, i32 0, i32 2
  %181 = load %struct.demangle_component*, %struct.demangle_component** %180, align 8
  %182 = call i32 @d_print_mod(%struct.d_print_info* %178, %struct.demangle_component* %181)
  %183 = load %struct.d_print_template*, %struct.d_print_template** %7, align 8
  %184 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %185 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %184, i32 0, i32 1
  store %struct.d_print_template* %183, %struct.d_print_template** %185, align 8
  %186 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %187 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %188 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %187, i32 0, i32 1
  %189 = load %struct.d_print_mod*, %struct.d_print_mod** %188, align 8
  %190 = load i32, i32* %6, align 4
  call void @d_print_mod_list(%struct.d_print_info* %186, %struct.d_print_mod* %189, i32 %190)
  br label %191

191:                                              ; preds = %177, %168, %93, %73, %49, %16
  ret void
}

declare dso_local i64 @d_print_saw_error(%struct.d_print_info*) #1

declare dso_local i32 @d_print_function_type(%struct.d_print_info*, %struct.demangle_component*, %struct.d_print_mod*) #1

declare dso_local i32 @d_print_array_type(%struct.d_print_info*, %struct.demangle_component*, %struct.d_print_mod*) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

declare dso_local i32 @d_append_string(%struct.d_print_info*, i8*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

declare dso_local i32 @d_print_mod(%struct.d_print_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
