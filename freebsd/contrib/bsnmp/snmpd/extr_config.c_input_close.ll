; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_input_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { i32, %struct.input*, %struct.input*, i32 }

@inputs = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_close() #0 {
  %1 = alloca %struct.input*, align 8
  %2 = call %struct.input* @LIST_FIRST(i32* @inputs)
  store %struct.input* %2, %struct.input** %1, align 8
  %3 = icmp eq %struct.input* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @abort() #3
  unreachable

6:                                                ; preds = %0
  %7 = load %struct.input*, %struct.input** %1, align 8
  %8 = getelementptr inbounds %struct.input, %struct.input* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %24 [
    i32 129, label %10
    i32 128, label %19
  ]

10:                                               ; preds = %6
  %11 = load %struct.input*, %struct.input** %1, align 8
  %12 = getelementptr inbounds %struct.input, %struct.input* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @fclose(i32 %13)
  %15 = load %struct.input*, %struct.input** %1, align 8
  %16 = getelementptr inbounds %struct.input, %struct.input* %15, i32 0, i32 2
  %17 = load %struct.input*, %struct.input** %16, align 8
  %18 = call i32 @free(%struct.input* %17)
  br label %24

19:                                               ; preds = %6
  %20 = load %struct.input*, %struct.input** %1, align 8
  %21 = getelementptr inbounds %struct.input, %struct.input* %20, i32 0, i32 1
  %22 = load %struct.input*, %struct.input** %21, align 8
  %23 = call i32 @free(%struct.input* %22)
  br label %24

24:                                               ; preds = %6, %19, %10
  %25 = load %struct.input*, %struct.input** %1, align 8
  %26 = load i32, i32* @link, align 4
  %27 = call i32 @LIST_REMOVE(%struct.input* %25, i32 %26)
  %28 = load %struct.input*, %struct.input** %1, align 8
  %29 = call i32 @free(%struct.input* %28)
  ret void
}

declare dso_local %struct.input* @LIST_FIRST(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @free(%struct.input*) #1

declare dso_local i32 @LIST_REMOVE(%struct.input*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
