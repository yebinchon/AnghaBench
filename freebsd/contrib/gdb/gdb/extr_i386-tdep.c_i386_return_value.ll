; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.type = type { i32 }
%struct.regcache = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@RETURN_VALUE_STRUCT_CONVENTION = common dso_local global i32 0, align 4
@RETURN_VALUE_REGISTER_CONVENTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.type*, %struct.regcache*, i8*, i8*)* @i386_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_return_value(%struct.gdbarch* %0, %struct.type* %1, %struct.regcache* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gdbarch*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.regcache*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %7, align 8
  store %struct.type* %1, %struct.type** %8, align 8
  store %struct.regcache* %2, %struct.regcache** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.type*, %struct.type** %8, align 8
  %14 = call i32 @TYPE_CODE(%struct.type* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @TYPE_CODE_UNION, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18, %5
  %23 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %24 = load %struct.type*, %struct.type** %8, align 8
  %25 = call i32 @i386_reg_struct_return_p(%struct.gdbarch* %23, %struct.type* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @RETURN_VALUE_STRUCT_CONVENTION, align 4
  store i32 %28, i32* %6, align 4
  br label %67

29:                                               ; preds = %22, %18
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.type*, %struct.type** %8, align 8
  %35 = call i32 @TYPE_NFIELDS(%struct.type* %34)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.type*, %struct.type** %8, align 8
  %39 = call i32 @TYPE_FIELD_TYPE(%struct.type* %38, i32 0)
  %40 = call %struct.type* @check_typedef(i32 %39)
  store %struct.type* %40, %struct.type** %8, align 8
  %41 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %42 = load %struct.type*, %struct.type** %8, align 8
  %43 = load %struct.regcache*, %struct.regcache** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @i386_return_value(%struct.gdbarch* %41, %struct.type* %42, %struct.regcache* %43, i8* %44, i8* %45)
  store i32 %46, i32* %6, align 4
  br label %67

47:                                               ; preds = %33, %29
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %52 = load %struct.type*, %struct.type** %8, align 8
  %53 = load %struct.regcache*, %struct.regcache** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @i386_extract_return_value(%struct.gdbarch* %51, %struct.type* %52, %struct.regcache* %53, i8* %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %61 = load %struct.type*, %struct.type** %8, align 8
  %62 = load %struct.regcache*, %struct.regcache** %9, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @i386_store_return_value(%struct.gdbarch* %60, %struct.type* %61, %struct.regcache* %62, i8* %63)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %37, %27
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @i386_reg_struct_return_p(%struct.gdbarch*, %struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @i386_extract_return_value(%struct.gdbarch*, %struct.type*, %struct.regcache*, i8*) #1

declare dso_local i32 @i386_store_return_value(%struct.gdbarch*, %struct.type*, %struct.regcache*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
