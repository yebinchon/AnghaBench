; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_map__process_kallsym_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_map__process_kallsym_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.process_kallsyms_args = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.rb_root* }
%struct.rb_root = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8, i32)* @map__process_kallsym_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map__process_kallsym_symbol(i8* %0, i8* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca %struct.process_kallsyms_args*, align 8
  %12 = alloca %struct.rb_root*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.process_kallsyms_args*
  store %struct.process_kallsyms_args* %14, %struct.process_kallsyms_args** %11, align 8
  %15 = load %struct.process_kallsyms_args*, %struct.process_kallsyms_args** %11, align 8
  %16 = getelementptr inbounds %struct.process_kallsyms_args, %struct.process_kallsyms_args* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.rb_root*, %struct.rb_root** %18, align 8
  %20 = load %struct.process_kallsyms_args*, %struct.process_kallsyms_args** %11, align 8
  %21 = getelementptr inbounds %struct.process_kallsyms_args, %struct.process_kallsyms_args* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %19, i64 %24
  store %struct.rb_root* %25, %struct.rb_root** %12, align 8
  %26 = load i8, i8* %8, align 1
  %27 = load %struct.process_kallsyms_args*, %struct.process_kallsyms_args** %11, align 8
  %28 = getelementptr inbounds %struct.process_kallsyms_args, %struct.process_kallsyms_args* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @symbol_type__is_a(i8 signext %26, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = load i8, i8* %8, align 1
  %38 = call i32 @kallsyms2elf_type(i8 signext %37)
  %39 = load i8*, i8** %7, align 8
  %40 = call %struct.symbol* @symbol__new(i32 %36, i32 0, i32 %38, i8* %39)
  store %struct.symbol* %40, %struct.symbol** %10, align 8
  %41 = load %struct.symbol*, %struct.symbol** %10, align 8
  %42 = icmp eq %struct.symbol* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %50

46:                                               ; preds = %35
  %47 = load %struct.rb_root*, %struct.rb_root** %12, align 8
  %48 = load %struct.symbol*, %struct.symbol** %10, align 8
  %49 = call i32 @symbols__insert(%struct.rb_root* %47, %struct.symbol* %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %43, %34
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @symbol_type__is_a(i8 signext, i64) #1

declare dso_local %struct.symbol* @symbol__new(i32, i32, i32, i8*) #1

declare dso_local i32 @kallsyms2elf_type(i8 signext) #1

declare dso_local i32 @symbols__insert(%struct.rb_root*, %struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
