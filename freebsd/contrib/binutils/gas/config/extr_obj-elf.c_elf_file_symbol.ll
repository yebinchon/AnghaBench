; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_elf_file_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_elf_file_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@symbol_rootP = common dso_local global %struct.TYPE_16__* null, align 8
@BSF_FILE = common dso_local global i32 0, align 4
@absolute_section = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global i32 0, align 4
@symbol_lastP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elf_file_symbol(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** @symbol_rootP, align 8
  %10 = icmp eq %struct.TYPE_16__* %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** @symbol_rootP, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = icmp eq %struct.TYPE_15__* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** @symbol_rootP, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BSF_FILE, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %16, %11, %8, %2
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @absolute_section, align 4
  %28 = call %struct.TYPE_16__* @symbol_new(i8* %26, i32 %27, i32 0, i32* null)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %5, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = call i32 @symbol_set_frag(%struct.TYPE_16__* %29, i32* @zero_address_frag)
  %31 = load i32, i32* @BSF_FILE, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = call %struct.TYPE_14__* @symbol_get_bfdsym(%struct.TYPE_16__* %32)
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** @symbol_rootP, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = icmp ne %struct.TYPE_16__* %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = call i32 @symbol_remove(%struct.TYPE_16__* %41, %struct.TYPE_16__** @symbol_rootP, i32* @symbol_lastP)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** @symbol_rootP, align 8
  %45 = call i32 @symbol_insert(%struct.TYPE_16__* %43, %struct.TYPE_16__* %44, %struct.TYPE_16__** @symbol_rootP, i32* @symbol_lastP)
  br label %46

46:                                               ; preds = %40, %25
  br label %47

47:                                               ; preds = %46, %16
  ret void
}

declare dso_local %struct.TYPE_16__* @symbol_new(i8*, i32, i32, i32*) #1

declare dso_local i32 @symbol_set_frag(%struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_14__* @symbol_get_bfdsym(%struct.TYPE_16__*) #1

declare dso_local i32 @symbol_remove(%struct.TYPE_16__*, %struct.TYPE_16__**, i32*) #1

declare dso_local i32 @symbol_insert(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
