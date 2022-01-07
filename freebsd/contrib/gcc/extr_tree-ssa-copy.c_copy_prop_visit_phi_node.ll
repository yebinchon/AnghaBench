; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-copy.c_copy_prop_visit_phi_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-copy.c_copy_prop_visit_phi_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\0AVisiting PHI node: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@EDGE_EXECUTABLE = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"\09Argument #%d: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@do_store_copy_prop = common dso_local global i64 0, align 8
@SSA_PROP_INTERESTING = common dso_local global i32 0, align 4
@SSA_PROP_VARYING = common dso_local global i32 0, align 4
@SSA_PROP_NOT_INTERESTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"\0APHI node \00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\0ATelling the propagator to \00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"add SSA edges out of this PHI and continue.\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"add SSA edges out of this PHI and never visit again.\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"do nothing with SSA edges and keep iterating.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @copy_prop_visit_phi_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_prop_visit_phi_node(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %12 = load i64, i64* @NULL_TREE, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %14 = load i64, i64* @NULL_TREE, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i32 0, i32* %16, align 8
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @PHI_RESULT(i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* @dump_file, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load i32, i32* @dump_flags, align 4
  %23 = load i32, i32* @TDF_DETAILS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i64, i64* @dump_file, align 8
  %28 = call i32 (i64, i8*, ...) @fprintf(i64 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @dump_file, align 8
  %30 = load i64, i64* %2, align 8
  %31 = load i32, i32* @dump_flags, align 4
  %32 = call i32 @print_generic_expr(i64 %29, i64 %30, i32 %31)
  %33 = load i64, i64* @dump_file, align 8
  %34 = call i32 (i64, i8*, ...) @fprintf(i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %26, %21, %1
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %148, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %2, align 8
  %39 = call i32 @PHI_NUM_ARGS(i64 %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %151

41:                                               ; preds = %36
  %42 = load i64, i64* %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @PHI_ARG_DEF(i64 %42, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call %struct.TYPE_6__* @PHI_ARG_EDGE(i64 %45, i32 %46)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %9, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EDGE_EXECUTABLE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  br label %148

55:                                               ; preds = %41
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @TREE_CODE(i64 %56)
  %58 = load i64, i64* @SSA_NAME, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %55
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i64 %65, i64* %66, align 8
  br label %151

67:                                               ; preds = %60
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @loop_depth_of_name(i64 %68)
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @loop_depth_of_name(i64 %70)
  %72 = icmp sgt i64 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i64 %74, i64* %75, align 8
  br label %151

76:                                               ; preds = %67
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %8, align 8
  %82 = call i64 @get_last_copy_of(i64 %81)
  %83 = load i64, i64* %5, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %76
  br label %148

86:                                               ; preds = %80
  %87 = load i64, i64* @dump_file, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i32, i32* @dump_flags, align 4
  %91 = load i32, i32* @TDF_DETAILS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i64, i64* @dump_file, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (i64, i8*, ...) @fprintf(i64 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i64, i64* @dump_file, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @dump_copy_of(i64 %98, i64 %99)
  %101 = load i64, i64* @dump_file, align 8
  %102 = call i32 (i64, i8*, ...) @fprintf(i64 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %94, %89, %86
  %104 = load i64, i64* %8, align 8
  %105 = call %struct.TYPE_5__* @get_copy_of_val(i64 %104)
  store %struct.TYPE_5__* %105, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NULL_TREE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i64 %111, i64* %112, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i64 %115, i64* %116, align 8
  br label %148

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @get_last_copy_of(i64 %119)
  %121 = load i64, i64* %8, align 8
  %122 = call i64 @get_last_copy_of(i64 %121)
  %123 = icmp ne i64 %120, %122
  br i1 %123, label %144, label %124

124:                                              ; preds = %117
  %125 = load i64, i64* @do_store_copy_prop, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @simple_cst_equal(i64 %138, i64 %141)
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %144, label %147

144:                                              ; preds = %136, %117
  %145 = load i64, i64* %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i64 %145, i64* %146, align 8
  br label %151

147:                                              ; preds = %136, %131, %127, %124
  br label %148

148:                                              ; preds = %147, %110, %85, %54
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %36

151:                                              ; preds = %144, %73, %64, %36
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %151
  %156 = load i64, i64* %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @set_copy_of_val(i64 %156, i64 %158, i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %5, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* @SSA_PROP_INTERESTING, align 4
  br label %172

170:                                              ; preds = %163
  %171 = load i32, i32* @SSA_PROP_VARYING, align 4
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32 [ %169, %168 ], [ %171, %170 ]
  store i32 %173, i32* %3, align 4
  br label %176

174:                                              ; preds = %155, %151
  %175 = load i32, i32* @SSA_PROP_NOT_INTERESTING, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = load i64, i64* @dump_file, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %212

179:                                              ; preds = %176
  %180 = load i32, i32* @dump_flags, align 4
  %181 = load i32, i32* @TDF_DETAILS, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %212

184:                                              ; preds = %179
  %185 = load i64, i64* @dump_file, align 8
  %186 = call i32 (i64, i8*, ...) @fprintf(i64 %185, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %187 = load i64, i64* @dump_file, align 8
  %188 = load i64, i64* %5, align 8
  %189 = call i32 @dump_copy_of(i64 %187, i64 %188)
  %190 = load i64, i64* @dump_file, align 8
  %191 = call i32 (i64, i8*, ...) @fprintf(i64 %190, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* @SSA_PROP_INTERESTING, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %184
  %196 = load i64, i64* @dump_file, align 8
  %197 = call i32 (i64, i8*, ...) @fprintf(i64 %196, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %209

198:                                              ; preds = %184
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* @SSA_PROP_VARYING, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i64, i64* @dump_file, align 8
  %204 = call i32 (i64, i8*, ...) @fprintf(i64 %203, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %208

205:                                              ; preds = %198
  %206 = load i64, i64* @dump_file, align 8
  %207 = call i32 (i64, i8*, ...) @fprintf(i64 %206, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %195
  %210 = load i64, i64* @dump_file, align 8
  %211 = call i32 (i64, i8*, ...) @fprintf(i64 %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %179, %176
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i64 @PHI_RESULT(i64) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i32 @PHI_NUM_ARGS(i64) #1

declare dso_local i64 @PHI_ARG_DEF(i64, i32) #1

declare dso_local %struct.TYPE_6__* @PHI_ARG_EDGE(i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i64) #1

declare dso_local i64 @loop_depth_of_name(i64) #1

declare dso_local i64 @get_last_copy_of(i64) #1

declare dso_local i32 @dump_copy_of(i64, i64) #1

declare dso_local %struct.TYPE_5__* @get_copy_of_val(i64) #1

declare dso_local i32 @simple_cst_equal(i64, i64) #1

declare dso_local i64 @set_copy_of_val(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
