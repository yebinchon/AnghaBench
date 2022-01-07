; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_extract_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_extract_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.regcache = type { i32 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@IA64_FR8_REGNUM = common dso_local global i32 0, align 4
@builtin_type_ia64_ext = common dso_local global i32 0, align 4
@IA64_GR8_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_extract_return_value(%struct.type* %0, %struct.regcache* %1, i8* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.regcache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.regcache* %1, %struct.regcache** %5, align 8
  store i8* %2, i8** %6, align 8
  %20 = load %struct.type*, %struct.type** %4, align 8
  %21 = call %struct.type* @is_float_or_hfa_type(%struct.type* %20)
  store %struct.type* %21, %struct.type** %7, align 8
  %22 = load %struct.type*, %struct.type** %7, align 8
  %23 = icmp ne %struct.type* %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %3
  %25 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %29 = load i32, i32* @IA64_FR8_REGNUM, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.type*, %struct.type** %4, align 8
  %31 = call i32 @TYPE_LENGTH(%struct.type* %30)
  %32 = load %struct.type*, %struct.type** %7, align 8
  %33 = call i32 @TYPE_LENGTH(%struct.type* %32)
  %34 = sdiv i32 %31, %33
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %39, %24
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %12, align 4
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.regcache*, %struct.regcache** %5, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @regcache_cooked_read(%struct.regcache* %40, i32 %41, i8* %28)
  %43 = load i32, i32* @builtin_type_ia64_ext, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load %struct.type*, %struct.type** %7, align 8
  %49 = call i32 @convert_typed_floating(i8* %28, i32 %43, i8* %47, %struct.type* %48)
  %50 = load %struct.type*, %struct.type** %7, align 8
  %51 = call i32 @TYPE_LENGTH(%struct.type* %50)
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  br label %104

58:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  %59 = load i32, i32* @IA64_GR8_REGNUM, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @IA64_GR8_REGNUM, align 4
  %61 = call %struct.type* @ia64_register_type(i32* null, i32 %60)
  %62 = call i32 @TYPE_LENGTH(%struct.type* %61)
  store i32 %62, i32* %16, align 4
  %63 = load %struct.type*, %struct.type** %4, align 8
  %64 = call i32 @TYPE_LENGTH(%struct.type* %63)
  %65 = load i32, i32* %16, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %17, align 4
  %67 = load %struct.type*, %struct.type** %4, align 8
  %68 = call i32 @TYPE_LENGTH(%struct.type* %67)
  %69 = load i32, i32* %16, align 4
  %70 = srem i32 %68, %69
  store i32 %70, i32* %18, align 4
  br label %71

71:                                               ; preds = %75, %58
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %17, align 4
  %74 = icmp sgt i32 %72, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.regcache*, %struct.regcache** %5, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @regcache_cooked_read_unsigned(%struct.regcache* %76, i32 %77, i32* %19)
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @memcpy(i8* %82, i32* %19, i32 %83)
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %71

90:                                               ; preds = %71
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.regcache*, %struct.regcache** %5, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @regcache_cooked_read_unsigned(%struct.regcache* %94, i32 %95, i32* %13)
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @memcpy(i8* %100, i32* %13, i32 %101)
  br label %103

103:                                              ; preds = %93, %90
  br label %104

104:                                              ; preds = %103, %56
  ret void
}

declare dso_local %struct.type* @is_float_or_hfa_type(%struct.type*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @regcache_cooked_read(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @convert_typed_floating(i8*, i32, i8*, %struct.type*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.type* @ia64_register_type(i32*, i32) #1

declare dso_local i32 @regcache_cooked_read_unsigned(%struct.regcache*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
