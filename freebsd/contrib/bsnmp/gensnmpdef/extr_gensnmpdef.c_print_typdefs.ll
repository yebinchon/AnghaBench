; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmpdef/extr_gensnmpdef.c_print_typdefs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmpdef/extr_gensnmpdef.c_print_typdefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @print_typdefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_typdefs(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call %struct.TYPE_9__* @smiGetFirstChildNode(%struct.TYPE_9__* %5)
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %2, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 128, label %14
    i32 131, label %14
    i32 130, label %17
    i32 129, label %17
  ]

14:                                               ; preds = %10, %10
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call i32 @print_stype(%struct.TYPE_9__* %15)
  br label %21

17:                                               ; preds = %10, %10
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = call i32 @save_node(%struct.TYPE_9__* %18)
  br label %27

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = call %struct.TYPE_9__* @smiGetNextChildNode(%struct.TYPE_9__* %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %2, align 8
  br label %7

24:                                               ; preds = %7
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = call i32 @save_node(%struct.TYPE_9__* %25)
  br label %27

27:                                               ; preds = %24, %17
  ret void
}

declare dso_local %struct.TYPE_9__* @smiGetFirstChildNode(%struct.TYPE_9__*) #1

declare dso_local i32 @print_stype(%struct.TYPE_9__*) #1

declare dso_local i32 @save_node(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @smiGetNextChildNode(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
