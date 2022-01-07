; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_get_nth_template_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_get_nth_template_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.objfile = type { i32 }
%struct.TYPE_2__ = type { %struct.type* }

@current_template = common dso_local global i32* null, align 8
@FT_TEMPLATE_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.objfile*, i32)* @hpread_get_nth_template_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @hpread_get_nth_template_arg(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__, align 8
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** @current_template, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32*, i32** @current_template, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.type* @TYPE_TEMPLATE_ARG(i32* %10, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.type* %12, %struct.type** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %15 = load %struct.type*, %struct.type** %14, align 8
  store %struct.type* %15, %struct.type** %3, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.objfile*, %struct.objfile** %4, align 8
  %18 = load i32, i32* @FT_TEMPLATE_ARG, align 4
  %19 = call %struct.type* @lookup_fundamental_type(%struct.objfile* %17, i32 %18)
  store %struct.type* %19, %struct.type** %3, align 8
  br label %20

20:                                               ; preds = %16, %9
  %21 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %21
}

declare dso_local %struct.type* @TYPE_TEMPLATE_ARG(i32*, i32) #1

declare dso_local %struct.type* @lookup_fundamental_type(%struct.objfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
