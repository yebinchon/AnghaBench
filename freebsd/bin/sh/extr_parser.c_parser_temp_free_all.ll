; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_parser_temp_free_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_parser_temp_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_temp = type { %struct.parser_temp*, %struct.parser_temp* }

@INTOFF = common dso_local global i32 0, align 4
@parser_temp = common dso_local global %struct.parser_temp* null, align 8
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parser_temp_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parser_temp_free_all() #0 {
  %1 = alloca %struct.parser_temp*, align 8
  %2 = load i32, i32* @INTOFF, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = load %struct.parser_temp*, %struct.parser_temp** @parser_temp, align 8
  %5 = icmp ne %struct.parser_temp* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load %struct.parser_temp*, %struct.parser_temp** @parser_temp, align 8
  store %struct.parser_temp* %7, %struct.parser_temp** %1, align 8
  %8 = load %struct.parser_temp*, %struct.parser_temp** %1, align 8
  %9 = getelementptr inbounds %struct.parser_temp, %struct.parser_temp* %8, i32 0, i32 1
  %10 = load %struct.parser_temp*, %struct.parser_temp** %9, align 8
  store %struct.parser_temp* %10, %struct.parser_temp** @parser_temp, align 8
  %11 = load %struct.parser_temp*, %struct.parser_temp** %1, align 8
  %12 = getelementptr inbounds %struct.parser_temp, %struct.parser_temp* %11, i32 0, i32 0
  %13 = load %struct.parser_temp*, %struct.parser_temp** %12, align 8
  %14 = call i32 @ckfree(%struct.parser_temp* %13)
  %15 = load %struct.parser_temp*, %struct.parser_temp** %1, align 8
  %16 = call i32 @ckfree(%struct.parser_temp* %15)
  br label %3

17:                                               ; preds = %3
  %18 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i32 @ckfree(%struct.parser_temp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
