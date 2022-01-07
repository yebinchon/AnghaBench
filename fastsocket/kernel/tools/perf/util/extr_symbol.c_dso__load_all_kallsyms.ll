; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_all_kallsyms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_all_kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.map = type { i32 }
%struct.process_kallsyms_args = type { %struct.dso*, %struct.map* }

@map__process_kallsym_symbol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, i8*, %struct.map*)* @dso__load_all_kallsyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__load_all_kallsyms(%struct.dso* %0, i8* %1, %struct.map* %2) #0 {
  %4 = alloca %struct.dso*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.map*, align 8
  %7 = alloca %struct.process_kallsyms_args, align 8
  store %struct.dso* %0, %struct.dso** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.map* %2, %struct.map** %6, align 8
  %8 = getelementptr inbounds %struct.process_kallsyms_args, %struct.process_kallsyms_args* %7, i32 0, i32 0
  %9 = load %struct.dso*, %struct.dso** %4, align 8
  store %struct.dso* %9, %struct.dso** %8, align 8
  %10 = getelementptr inbounds %struct.process_kallsyms_args, %struct.process_kallsyms_args* %7, i32 0, i32 1
  %11 = load %struct.map*, %struct.map** %6, align 8
  store %struct.map* %11, %struct.map** %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @map__process_kallsym_symbol, align 4
  %14 = call i32 @kallsyms__parse(i8* %12, %struct.process_kallsyms_args* %7, i32 %13)
  ret i32 %14
}

declare dso_local i32 @kallsyms__parse(i8*, %struct.process_kallsyms_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
