; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_convert_class_to_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_convert_class_to_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.z_candidate* }
%struct.z_candidate = type { i32, %struct.TYPE_13__*, i64, i64, %struct.TYPE_12__**, %struct.z_candidate* }
%struct.TYPE_12__ = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@DEDUCE_CONV = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i32 0, align 4
@ck_user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i64, i64, i64)* @convert_class_to_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @convert_class_to_reference(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.z_candidate*, align 8
  %13 = alloca %struct.z_candidate*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @lookup_conversions(i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %205

24:                                               ; preds = %3
  store %struct.z_candidate* null, %struct.z_candidate** %12, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @build_pointer_type(i64 %25)
  %27 = call i64 @build_int_cst(i32 %26, i32 0)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* @NULL_TREE, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @build_tree_list(i64 %28, i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @build_reference_type(i64 %31)
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %146, %24
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %149

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @TREE_VALUE(i64 %37)
  store i64 %38, i64* %15, align 8
  br label %39

39:                                               ; preds = %143, %36
  %40 = load i64, i64* %15, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %146

42:                                               ; preds = %39
  %43 = load i64, i64* %15, align 8
  %44 = call i64 @OVL_CURRENT(i64 %43)
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i64 @TREE_TYPE(i64 %45)
  %47 = call i64 @TREE_TYPE(i64 %46)
  store i64 %47, i64* %17, align 8
  store %struct.z_candidate* null, %struct.z_candidate** %13, align 8
  %48 = load i64, i64* %16, align 8
  %49 = call i64 @TREE_CODE(i64 %48)
  %50 = load i64, i64* @TEMPLATE_DECL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %42
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @NULL_TREE, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @TYPE_BINFO(i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @TREE_PURPOSE(i64 %60)
  %62 = load i32, i32* @LOOKUP_NORMAL, align 4
  %63 = load i32, i32* @DEDUCE_CONV, align 4
  %64 = call %struct.z_candidate* @add_template_candidate(%struct.z_candidate** %12, i64 %53, i64 %54, i64 %55, i64 %56, i64 %57, i32 %59, i32 %61, i32 %62, i32 %63)
  store %struct.z_candidate* %64, %struct.z_candidate** %13, align 8
  %65 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %66 = icmp ne %struct.z_candidate* %65, null
  br i1 %66, label %67, label %89

67:                                               ; preds = %52
  %68 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %69 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %16, align 8
  %71 = load i64, i64* %16, align 8
  %72 = call i64 @TREE_TYPE(i64 %71)
  %73 = call i64 @TREE_TYPE(i64 %72)
  store i64 %73, i64* %17, align 8
  %74 = load i64, i64* %17, align 8
  %75 = call i64 @TREE_CODE(i64 %74)
  %76 = load i64, i64* @REFERENCE_TYPE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %67
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i64 @TREE_TYPE(i64 %80)
  %82 = call i64 @reference_compatible_p(i64 %79, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78, %67
  %85 = load %struct.z_candidate*, %struct.z_candidate** %12, align 8
  %86 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %85, i32 0, i32 5
  %87 = load %struct.z_candidate*, %struct.z_candidate** %86, align 8
  store %struct.z_candidate* %87, %struct.z_candidate** %12, align 8
  store %struct.z_candidate* null, %struct.z_candidate** %13, align 8
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %88, %52
  br label %112

90:                                               ; preds = %42
  %91 = load i64, i64* %17, align 8
  %92 = call i64 @TREE_CODE(i64 %91)
  %93 = load i64, i64* @REFERENCE_TYPE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* %17, align 8
  %98 = call i64 @TREE_TYPE(i64 %97)
  %99 = call i64 @reference_compatible_p(i64 %96, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @TYPE_BINFO(i64 %105)
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @TREE_PURPOSE(i64 %107)
  %109 = load i32, i32* @LOOKUP_NORMAL, align 4
  %110 = call %struct.z_candidate* @add_function_candidate(%struct.z_candidate** %12, i64 %102, i64 %103, i64 %104, i32 %106, i32 %108, i32 %109)
  store %struct.z_candidate* %110, %struct.z_candidate** %13, align 8
  br label %111

111:                                              ; preds = %101, %95, %90
  br label %112

112:                                              ; preds = %111, %89
  %113 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %114 = icmp ne %struct.z_candidate* %113, null
  br i1 %114, label %115, label %142

115:                                              ; preds = %112
  %116 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %117 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @TREE_TYPE(i64 %118)
  %120 = call i64 @TREE_TYPE(i64 %119)
  %121 = call i64 @TREE_TYPE(i64 %120)
  %122 = load i64, i64* @NULL_TREE, align 8
  %123 = call %struct.TYPE_13__* @build_identity_conv(i64 %121, i64 %122)
  store %struct.TYPE_13__* %123, %struct.TYPE_13__** %18, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %126 = call %struct.TYPE_13__* @direct_reference_binding(i64 %124, %struct.TYPE_13__* %125)
  %127 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %128 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %127, i32 0, i32 1
  store %struct.TYPE_13__* %126, %struct.TYPE_13__** %128, align 8
  %129 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %130 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %129, i32 0, i32 4
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %131, i64 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %137 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %136, i32 0, i32 1
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %135
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %115, %112
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %15, align 8
  %145 = call i64 @OVL_NEXT(i64 %144)
  store i64 %145, i64* %15, align 8
  br label %39

146:                                              ; preds = %39
  %147 = load i64, i64* %8, align 8
  %148 = call i64 @TREE_CHAIN(i64 %147)
  store i64 %148, i64* %8, align 8
  br label %33

149:                                              ; preds = %33
  %150 = load %struct.z_candidate*, %struct.z_candidate** %12, align 8
  %151 = load i32, i32* @pedantic, align 4
  %152 = call %struct.z_candidate* @splice_viable(%struct.z_candidate* %150, i32 %151, i32* %14)
  store %struct.z_candidate* %152, %struct.z_candidate** %12, align 8
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %149
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %205

156:                                              ; preds = %149
  %157 = load %struct.z_candidate*, %struct.z_candidate** %12, align 8
  %158 = call %struct.z_candidate* @tourney(%struct.z_candidate* %157)
  store %struct.z_candidate* %158, %struct.z_candidate** %13, align 8
  %159 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %160 = icmp ne %struct.z_candidate* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %205

162:                                              ; preds = %156
  %163 = load i64, i64* @NULL_TREE, align 8
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @build_this(i64 %164)
  %166 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %167 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @TREE_CHAIN(i64 %168)
  %170 = call i64 @tree_cons(i64 %163, i32 %165, i64 %169)
  %171 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %172 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %171, i32 0, i32 3
  store i64 %170, i64* %172, align 8
  %173 = load i32, i32* @ck_user, align 4
  %174 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %175 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @TREE_TYPE(i64 %176)
  %178 = call i64 @TREE_TYPE(i64 %177)
  %179 = load i64, i64* %7, align 8
  %180 = call i64 @TREE_TYPE(i64 %179)
  %181 = load i64, i64* %7, align 8
  %182 = call %struct.TYPE_13__* @build_identity_conv(i64 %180, i64 %181)
  %183 = call %struct.TYPE_13__* @build_conv(i32 %173, i64 %178, %struct.TYPE_13__* %182)
  store %struct.TYPE_13__* %183, %struct.TYPE_13__** %10, align 8
  %184 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  store %struct.z_candidate* %184, %struct.z_candidate** %186, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %188 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %189 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %188, i32 0, i32 1
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = call %struct.TYPE_13__* @merge_conversion_sequences(%struct.TYPE_13__* %187, %struct.TYPE_13__* %190)
  %192 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %193 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %192, i32 0, i32 1
  store %struct.TYPE_13__* %191, %struct.TYPE_13__** %193, align 8
  %194 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %195 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %201

198:                                              ; preds = %162
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  br label %201

201:                                              ; preds = %198, %162
  %202 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %203 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %202, i32 0, i32 1
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  store %struct.TYPE_13__* %204, %struct.TYPE_13__** %4, align 8
  br label %205

205:                                              ; preds = %201, %161, %155, %23
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %206
}

declare dso_local i64 @lookup_conversions(i64) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i32 @build_pointer_type(i64) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

declare dso_local i64 @build_reference_type(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.z_candidate* @add_template_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_BINFO(i64) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i64 @reference_compatible_p(i64, i64) #1

declare dso_local %struct.z_candidate* @add_function_candidate(%struct.z_candidate**, i64, i64, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @build_identity_conv(i64, i64) #1

declare dso_local %struct.TYPE_13__* @direct_reference_binding(i64, %struct.TYPE_13__*) #1

declare dso_local i64 @OVL_NEXT(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local %struct.z_candidate* @splice_viable(%struct.z_candidate*, i32, i32*) #1

declare dso_local %struct.z_candidate* @tourney(%struct.z_candidate*) #1

declare dso_local i64 @tree_cons(i64, i32, i64) #1

declare dso_local i32 @build_this(i64) #1

declare dso_local %struct.TYPE_13__* @build_conv(i32, i64, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @merge_conversion_sequences(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
