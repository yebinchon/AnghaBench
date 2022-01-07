; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_struct_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_struct_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.axs_value = type { i64, %struct.type* }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"The left operand of `%s' is not a %s.\00", align 1
@axs_lvalue_memory = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Structure does not live in memory.\00", align 1
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.axs_value*, i8*, i8*, i8*)* @gen_struct_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_struct_ref(%struct.agent_expr* %0, %struct.axs_value* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.agent_expr*, align 8
  %7 = alloca %struct.axs_value*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.type*, align 8
  %12 = alloca i32, align 4
  store %struct.agent_expr* %0, %struct.agent_expr** %6, align 8
  store %struct.axs_value* %1, %struct.axs_value** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  br label %13

13:                                               ; preds = %20, %5
  %14 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %15 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %14, i32 0, i32 1
  %16 = load %struct.type*, %struct.type** %15, align 8
  %17 = call i64 @TYPE_CODE(%struct.type* %16)
  %18 = load i64, i64* @TYPE_CODE_PTR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %22 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %23 = call i32 @gen_usual_unary(%struct.agent_expr* %21, %struct.axs_value* %22)
  %24 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %25 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %26 = call i32 @gen_deref(%struct.agent_expr* %24, %struct.axs_value* %25)
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %29 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %28, i32 0, i32 1
  %30 = load %struct.type*, %struct.type** %29, align 8
  %31 = call %struct.type* @check_typedef(%struct.type* %30)
  store %struct.type* %31, %struct.type** %11, align 8
  %32 = load %struct.type*, %struct.type** %11, align 8
  %33 = call i64 @TYPE_CODE(%struct.type* %32)
  %34 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.type*, %struct.type** %11, align 8
  %38 = call i64 @TYPE_CODE(%struct.type* %37)
  %39 = load i64, i64* @TYPE_CODE_UNION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43)
  br label %45

45:                                               ; preds = %41, %36, %27
  %46 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %47 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @axs_lvalue_memory, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  %54 = load %struct.type*, %struct.type** %11, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @find_field(%struct.type* %54, i8* %55)
  store i32 %56, i32* %12, align 4
  %57 = load %struct.type*, %struct.type** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i64 @TYPE_FIELD_PACKED(%struct.type* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %53
  %62 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %63 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %64 = load %struct.type*, %struct.type** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %64, i32 %65)
  %67 = load %struct.type*, %struct.type** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %67, i32 %68)
  %70 = load %struct.type*, %struct.type** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %70, i32 %71)
  %73 = sext i32 %72 to i64
  %74 = load %struct.type*, %struct.type** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @TYPE_FIELD_BITSIZE(%struct.type* %74, i32 %75)
  %77 = add nsw i64 %73, %76
  %78 = call i32 @gen_bitfield_ref(%struct.agent_expr* %62, %struct.axs_value* %63, %struct.type* %66, i32 %69, i64 %77)
  br label %95

79:                                               ; preds = %53
  %80 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %81 = load %struct.type*, %struct.type** %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %81, i32 %82)
  %84 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %85 = sdiv i32 %83, %84
  %86 = call i32 @gen_offset(%struct.agent_expr* %80, i32 %85)
  %87 = load i64, i64* @axs_lvalue_memory, align 8
  %88 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %89 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.type*, %struct.type** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %90, i32 %91)
  %93 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %94 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %93, i32 0, i32 1
  store %struct.type* %92, %struct.type** %94, align 8
  br label %95

95:                                               ; preds = %79, %61
  ret void
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @gen_usual_unary(%struct.agent_expr*, %struct.axs_value*) #1

declare dso_local i32 @gen_deref(%struct.agent_expr*, %struct.axs_value*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @find_field(%struct.type*, i8*) #1

declare dso_local i64 @TYPE_FIELD_PACKED(%struct.type*, i32) #1

declare dso_local i32 @gen_bitfield_ref(%struct.agent_expr*, %struct.axs_value*, %struct.type*, i32, i64) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_BITSIZE(%struct.type*, i32) #1

declare dso_local i32 @gen_offset(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
