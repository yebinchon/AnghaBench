; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.block = type { i32 }
%struct.symbol = type { i32 }
%struct.symtab = type { i32 }

@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No enum type named %s.\00", align 1
@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"This context has class, struct or union %s, not an enum.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @lookup_enum(i8* %0, %struct.block* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.block* %1, %struct.block** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load %struct.block*, %struct.block** %4, align 8
  %8 = load i32, i32* @STRUCT_DOMAIN, align 4
  %9 = call %struct.symbol* @lookup_symbol(i8* %6, %struct.block* %7, i32 %8, i32 0, %struct.symtab** null)
  store %struct.symbol* %9, %struct.symbol** %5, align 8
  %10 = load %struct.symbol*, %struct.symbol** %5, align 8
  %11 = icmp eq %struct.symbol* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.symbol*, %struct.symbol** %5, align 8
  %17 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %16)
  %18 = call i64 @TYPE_CODE(%struct.type* %17)
  %19 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.symbol*, %struct.symbol** %5, align 8
  %26 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %25)
  ret %struct.type* %26
}

declare dso_local %struct.symbol* @lookup_symbol(i8*, %struct.block*, i32, i32, %struct.symtab**) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
