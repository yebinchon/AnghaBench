; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_assign_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_assign_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"partition %d has variable \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c" assigned to it.\0A\00", align 1
@ROOT_VAR_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"  --> \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" not coalesced with \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" -->  New temp:  '\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @assign_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_vars(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @root_var_init(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %167

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @num_var_partitions(i32 %17)
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %55, %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @partition_to_var(i32 %24, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @SSA_NAME, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  %33 = call %struct.TYPE_3__* @var_ann(i64 %32)
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %9, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i64, i64* @dump_file, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load i32, i32* @dump_flags, align 4
  %40 = load i32, i32* @TDF_DETAILS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i64, i64* @dump_file, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i64, i8*, ...) @fprintf(i64 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i64, i64* @dump_file, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @TDF_SLIM, align 4
  %50 = call i32 @print_generic_expr(i64 %47, i64 %48, i32 %49)
  %51 = load i64, i64* @dump_file, align 8
  %52 = call i32 (i64, i8*, ...) @fprintf(i64 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %43, %38, %31
  br label %54

54:                                               ; preds = %53, %23
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %19

58:                                               ; preds = %19
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @root_var_num(i32 %59)
  store i32 %60, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %161, %58
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %164

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @root_var(i32 %66, i32 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call %struct.TYPE_3__* @var_ann(i64 %69)
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @root_var_first_partition(i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %156, %65
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @ROOT_VAR_NONE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %160

78:                                               ; preds = %74
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @partition_to_var(i32 %79, i32 %80)
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load i64, i64* %7, align 8
  %87 = call i64 @TREE_CODE(i64 %86)
  %88 = load i64, i64* @SSA_NAME, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %78
  br label %156

91:                                               ; preds = %85
  %92 = load i32, i32* %2, align 4
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @var_to_partition(i32 %92, i64 %93)
  store i32 %94, i32* %6, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %91
  %100 = load i64, i64* @dump_file, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i32, i32* @dump_flags, align 4
  %104 = load i32, i32* @TDF_DETAILS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i64, i64* @dump_file, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @print_exprs(i64 %108, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i64 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %102, %99
  %113 = load i32, i32* %2, align 4
  %114 = load i64, i64* %8, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @change_partition_var(i32 %113, i64 %114, i32 %115)
  br label %156

117:                                              ; preds = %91
  %118 = load i64, i64* @dump_file, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32, i32* @dump_flags, align 4
  %122 = load i32, i32* @TDF_DETAILS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i64, i64* @dump_file, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @print_exprs(i64 %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i64 %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %128, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %130

130:                                              ; preds = %125, %120, %117
  %131 = load i64, i64* %7, align 8
  %132 = call i64 @create_temp(i64 %131)
  store i64 %132, i64* %8, align 8
  %133 = load i32, i32* %2, align 4
  %134 = load i64, i64* %8, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @change_partition_var(i32 %133, i64 %134, i32 %135)
  %137 = load i64, i64* %8, align 8
  %138 = call %struct.TYPE_3__* @var_ann(i64 %137)
  store %struct.TYPE_3__* %138, %struct.TYPE_3__** %9, align 8
  %139 = load i64, i64* @dump_file, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %130
  %142 = load i32, i32* @dump_flags, align 4
  %143 = load i32, i32* @TDF_DETAILS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load i64, i64* @dump_file, align 8
  %148 = call i32 (i64, i8*, ...) @fprintf(i64 %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %149 = load i64, i64* @dump_file, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load i32, i32* @TDF_SLIM, align 4
  %152 = call i32 @print_generic_expr(i64 %149, i64 %150, i32 %151)
  %153 = load i64, i64* @dump_file, align 8
  %154 = call i32 (i64, i8*, ...) @fprintf(i64 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %155

155:                                              ; preds = %146, %141, %130
  br label %156

156:                                              ; preds = %155, %112, %90
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @root_var_next_partition(i32 %157, i32 %158)
  store i32 %159, i32* %4, align 4
  br label %74

160:                                              ; preds = %74
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %3, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %3, align 4
  br label %61

164:                                              ; preds = %61
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @root_var_delete(i32 %165)
  br label %167

167:                                              ; preds = %164, %15
  ret void
}

declare dso_local i32 @root_var_init(i32) #1

declare dso_local i32 @num_var_partitions(i32) #1

declare dso_local i64 @partition_to_var(i32, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.TYPE_3__* @var_ann(i64) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i32 @root_var_num(i32) #1

declare dso_local i64 @root_var(i32, i32) #1

declare dso_local i32 @root_var_first_partition(i32, i32) #1

declare dso_local i32 @var_to_partition(i32, i64) #1

declare dso_local i32 @print_exprs(i64, i8*, i64, i8*, i64, i8*) #1

declare dso_local i32 @change_partition_var(i32, i64, i32) #1

declare dso_local i64 @create_temp(i64) #1

declare dso_local i32 @root_var_next_partition(i32, i32) #1

declare dso_local i32 @root_var_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
