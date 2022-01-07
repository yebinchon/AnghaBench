; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_ccp_visit_phi_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_ccp_visit_phi_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8*, i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\0AVisiting PHI node: \00", align 1
@SSA_PROP_VARYING = common dso_local global i32 0, align 4
@do_store_ccp = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"\0A    Argument #%d (%d -> %d %sexecutable)\0A\00", align 1
@EDGE_EXECUTABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\09Value: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\0A    PHI node value: \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@SSA_PROP_NOT_INTERESTING = common dso_local global i32 0, align 4
@SSA_PROP_INTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ccp_visit_phi_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_visit_phi_node(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i64, i64* @dump_file, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @dump_flags, align 4
  %14 = load i32, i32* @TDF_DETAILS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i64, i64* @dump_file, align 8
  %19 = call i32 (i64, i8*, ...) @fprintf(i64 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @dump_file, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @dump_flags, align 4
  %23 = call i32 @print_generic_expr(i64 %20, i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %12, %1
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @PHI_RESULT(i8* %25)
  %27 = call %struct.TYPE_13__* @get_value(i8* %26, i32 0)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %5, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %46 [
    i32 128, label %31
    i32 132, label %33
    i32 129, label %37
    i32 131, label %40
    i32 130, label %40
  ]

31:                                               ; preds = %24
  %32 = load i32, i32* @SSA_PROP_VARYING, align 4
  store i32 %32, i32* %2, align 4
  br label %184

33:                                               ; preds = %24
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = bitcast %struct.TYPE_13__* %6 to i8*
  %36 = bitcast %struct.TYPE_13__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  br label %48

37:                                               ; preds = %24
  %38 = load i64, i64* @do_store_ccp, align 8
  %39 = call i32 @gcc_assert(i64 %38)
  br label %40

40:                                               ; preds = %24, %24, %37
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 131, i32* %41, align 8
  %42 = load i8*, i8** @NULL_TREE, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** @NULL_TREE, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  br label %48

46:                                               ; preds = %24
  %47 = call i32 (...) @gcc_unreachable()
  br label %48

48:                                               ; preds = %46, %40, %33
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %139, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @PHI_NUM_ARGS(i8* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %142

54:                                               ; preds = %49
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call %struct.TYPE_14__* @PHI_ARG_EDGE(i8* %55, i32 %56)
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %7, align 8
  %58 = load i64, i64* @dump_file, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %54
  %61 = load i32, i32* @dump_flags, align 4
  %62 = load i32, i32* @TDF_DETAILS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load i64, i64* @dump_file, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @EDGE_EXECUTABLE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %86 = call i32 (i64, i8*, ...) @fprintf(i64 %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %72, i32 %77, i8* %85)
  br label %87

87:                                               ; preds = %65, %60, %54
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @EDGE_EXECUTABLE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %138

94:                                               ; preds = %87
  %95 = load i8*, i8** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i8* @PHI_ARG_DEF(i8* %95, i32 %96)
  store i8* %97, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @is_gimple_min_invariant(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i32 132, i32* %102, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  store i8* %103, i8** %104, align 8
  %105 = load i8*, i8** @NULL_TREE, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  br label %112

107:                                              ; preds = %94
  %108 = load i8*, i8** %8, align 8
  %109 = call %struct.TYPE_13__* @get_value(i8* %108, i32 1)
  %110 = bitcast %struct.TYPE_13__* %9 to i8*
  %111 = bitcast %struct.TYPE_13__* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 24, i1 false)
  br label %112

112:                                              ; preds = %107, %101
  %113 = call i32 @ccp_lattice_meet(%struct.TYPE_13__* %6, %struct.TYPE_13__* %9)
  %114 = load i64, i64* @dump_file, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i32, i32* @dump_flags, align 4
  %118 = load i32, i32* @TDF_DETAILS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load i64, i64* @dump_file, align 8
  %123 = call i32 (i64, i8*, ...) @fprintf(i64 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i64, i64* @dump_file, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* @dump_flags, align 4
  %127 = call i32 @print_generic_expr(i64 %124, i8* %125, i32 %126)
  %128 = load i64, i64* @dump_file, align 8
  %129 = call i32 @dump_lattice_value(i64 %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %9)
  %130 = load i64, i64* @dump_file, align 8
  %131 = call i32 (i64, i8*, ...) @fprintf(i64 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %132

132:                                              ; preds = %121, %116, %112
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 128
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %142

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %87
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %49

142:                                              ; preds = %136, %49
  %143 = load i64, i64* @dump_file, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* @dump_flags, align 4
  %147 = load i32, i32* @TDF_DETAILS, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i64, i64* @dump_file, align 8
  %152 = call i32 @dump_lattice_value(i64 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %6)
  %153 = load i64, i64* @dump_file, align 8
  %154 = call i32 (i64, i8*, ...) @fprintf(i64 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %155

155:                                              ; preds = %150, %145, %142
  %156 = load i64, i64* @do_store_ccp, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 129
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 131
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @SSA_PROP_NOT_INTERESTING, align 4
  store i32 %168, i32* %2, align 4
  br label %184

169:                                              ; preds = %163, %158, %155
  %170 = load i8*, i8** %3, align 8
  %171 = call i8* @PHI_RESULT(i8* %170)
  %172 = call i64 @set_lattice_value(i8* %171, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %6)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 128
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @SSA_PROP_VARYING, align 4
  store i32 %179, i32* %2, align 4
  br label %184

180:                                              ; preds = %174
  %181 = load i32, i32* @SSA_PROP_INTERESTING, align 4
  store i32 %181, i32* %2, align 4
  br label %184

182:                                              ; preds = %169
  %183 = load i32, i32* @SSA_PROP_NOT_INTERESTING, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %180, %178, %167, %31
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @get_value(i8*, i32) #1

declare dso_local i8* @PHI_RESULT(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @PHI_NUM_ARGS(i8*) #1

declare dso_local %struct.TYPE_14__* @PHI_ARG_EDGE(i8*, i32) #1

declare dso_local i8* @PHI_ARG_DEF(i8*, i32) #1

declare dso_local i64 @is_gimple_min_invariant(i8*) #1

declare dso_local i32 @ccp_lattice_meet(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @dump_lattice_value(i64, i8*, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8) #1

declare dso_local i64 @set_lattice_value(i8*, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
