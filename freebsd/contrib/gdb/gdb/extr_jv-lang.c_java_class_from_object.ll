; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_java_class_from_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_java_class_from_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"vtable\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"structure\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @java_class_from_object(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %2, align 8
  %4 = load %struct.value*, %struct.value** %2, align 8
  %5 = call i32 @VALUE_TYPE(%struct.value* %4)
  %6 = call i64 @TYPE_CODE(i32 %5)
  %7 = load i64, i64* @TYPE_CODE_PTR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.value*, %struct.value** %2, align 8
  %11 = call i32 @VALUE_TYPE(%struct.value* %10)
  %12 = call i32 @TYPE_TARGET_TYPE(i32 %11)
  %13 = call i64 @TYPE_LENGTH(i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = call i32 (...) @get_java_object_type()
  %17 = load %struct.value*, %struct.value** %2, align 8
  %18 = call i32 @value_as_address(%struct.value* %17)
  %19 = call %struct.value* @value_at(i32 %16, i32 %18, i32* null)
  store %struct.value* %19, %struct.value** %2, align 8
  br label %20

20:                                               ; preds = %15, %9, %1
  %21 = call %struct.value* @value_struct_elt(%struct.value** %2, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.value* %21, %struct.value** %3, align 8
  %22 = call %struct.value* @value_struct_elt(%struct.value** %3, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  ret %struct.value* %22
}

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_LENGTH(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(i32) #1

declare dso_local %struct.value* @value_at(i32, i32, i32*) #1

declare dso_local i32 @get_java_object_type(...) #1

declare dso_local i32 @value_as_address(%struct.value*) #1

declare dso_local %struct.value* @value_struct_elt(%struct.value**, i32*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
