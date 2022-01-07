; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_store_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_store_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.regcache = type { i32 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@builtin_type_ia64_ext = common dso_local global i32 0, align 4
@IA64_FR8_REGNUM = common dso_local global i32 0, align 4
@IA64_GR8_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.regcache*, i8*)* @ia64_store_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_store_return_value(%struct.type* %0, %struct.regcache* %1, i8* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.regcache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.regcache* %1, %struct.regcache** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = call i64 @TYPE_CODE(%struct.type* %9)
  %11 = load i64, i64* @TYPE_CODE_FLT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.type*, %struct.type** %4, align 8
  %20 = load i32, i32* @builtin_type_ia64_ext, align 4
  %21 = call i32 @convert_typed_floating(i8* %18, %struct.type* %19, i8* %17, i32 %20)
  %22 = load %struct.regcache*, %struct.regcache** %5, align 8
  %23 = load i32, i32* @IA64_FR8_REGNUM, align 4
  %24 = call i32 @regcache_cooked_write(%struct.regcache* %22, i32 %23, i8* %17)
  %25 = load i32, i32* @IA64_FR8_REGNUM, align 4
  %26 = call i32 @target_store_registers(i32 %25)
  %27 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %27)
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.regcache*, %struct.regcache** %5, align 8
  %30 = load i32, i32* @IA64_GR8_REGNUM, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @regcache_cooked_write(%struct.regcache* %29, i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %28, %13
  ret void
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @convert_typed_floating(i8*, %struct.type*, i8*, i32) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @target_store_registers(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
