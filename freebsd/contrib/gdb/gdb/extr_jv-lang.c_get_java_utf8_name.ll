; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_get_java_utf8_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_get_java_utf8_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i32 }
%struct.value = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"structure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_java_utf8_name(%struct.obstack* %0, %struct.value* %1) #0 {
  %3 = alloca %struct.obstack*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.obstack* %0, %struct.obstack** %3, align 8
  store %struct.value* %1, %struct.value** %4, align 8
  %9 = load %struct.value*, %struct.value** %4, align 8
  store %struct.value* %9, %struct.value** %6, align 8
  %10 = call %struct.value* @value_struct_elt(%struct.value** %6, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.value* %10, %struct.value** %6, align 8
  %11 = load %struct.value*, %struct.value** %6, align 8
  %12 = call i64 @value_as_long(%struct.value* %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.value*, %struct.value** %6, align 8
  %15 = call i64 @VALUE_ADDRESS(%struct.value* %14)
  %16 = load %struct.value*, %struct.value** %6, align 8
  %17 = call i64 @VALUE_OFFSET(%struct.value* %16)
  %18 = add nsw i64 %15, %17
  %19 = load %struct.value*, %struct.value** %6, align 8
  %20 = call i32 @VALUE_TYPE(%struct.value* %19)
  %21 = call i64 @TYPE_LENGTH(i32 %20)
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* %8, align 8
  %23 = load %struct.obstack*, %struct.obstack** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i8* @obstack_alloc(%struct.obstack* %23, i32 %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i64, i64* %8, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @read_memory(i64 %31, i8* %32, i32 %33)
  %35 = load i8*, i8** %5, align 8
  ret i8* %35
}

declare dso_local %struct.value* @value_struct_elt(%struct.value**, i32*, i8*, i32*, i8*) #1

declare dso_local i64 @value_as_long(%struct.value*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

declare dso_local i64 @TYPE_LENGTH(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i8* @obstack_alloc(%struct.obstack*, i32) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
