; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_reqid_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_reqid_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmodule = type { i32 }
%struct.idrange = type { %struct.lmodule* }

@idrange_list = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lmodule*)* @reqid_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reqid_flush(%struct.lmodule* %0) #0 {
  %2 = alloca %struct.lmodule*, align 8
  %3 = alloca %struct.idrange*, align 8
  %4 = alloca %struct.idrange*, align 8
  store %struct.lmodule* %0, %struct.lmodule** %2, align 8
  %5 = call %struct.idrange* @TAILQ_FIRST(i32* @idrange_list)
  store %struct.idrange* %5, %struct.idrange** %3, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load %struct.idrange*, %struct.idrange** %3, align 8
  %8 = icmp ne %struct.idrange* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = load %struct.idrange*, %struct.idrange** %3, align 8
  %11 = load i32, i32* @link, align 4
  %12 = call %struct.idrange* @TAILQ_NEXT(%struct.idrange* %10, i32 %11)
  store %struct.idrange* %12, %struct.idrange** %4, align 8
  %13 = load %struct.idrange*, %struct.idrange** %3, align 8
  %14 = getelementptr inbounds %struct.idrange, %struct.idrange* %13, i32 0, i32 0
  %15 = load %struct.lmodule*, %struct.lmodule** %14, align 8
  %16 = load %struct.lmodule*, %struct.lmodule** %2, align 8
  %17 = icmp eq %struct.lmodule* %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = load %struct.idrange*, %struct.idrange** %3, align 8
  %20 = load i32, i32* @link, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* @idrange_list, %struct.idrange* %19, i32 %20)
  %22 = load %struct.idrange*, %struct.idrange** %3, align 8
  %23 = call i32 @free(%struct.idrange* %22)
  br label %24

24:                                               ; preds = %18, %9
  %25 = load %struct.idrange*, %struct.idrange** %4, align 8
  store %struct.idrange* %25, %struct.idrange** %3, align 8
  br label %6

26:                                               ; preds = %6
  ret void
}

declare dso_local %struct.idrange* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.idrange* @TAILQ_NEXT(%struct.idrange*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.idrange*, i32) #1

declare dso_local i32 @free(%struct.idrange*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
