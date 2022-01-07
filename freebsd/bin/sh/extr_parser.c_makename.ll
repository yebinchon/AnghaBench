; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_makename.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_makename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@NARG = common dso_local global i32 0, align 4
@wordtext = common dso_local global i32 0, align 4
@backquotelist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.node* ()* @makename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.node* @makename() #0 {
  %1 = alloca %union.node*, align 8
  %2 = call i64 @stalloc(i32 4)
  %3 = inttoptr i64 %2 to %union.node*
  store %union.node* %3, %union.node** %1, align 8
  %4 = load i32, i32* @NARG, align 4
  %5 = load %union.node*, %union.node** %1, align 8
  %6 = bitcast %union.node* %5 to i32*
  store i32 %4, i32* %6, align 8
  %7 = load %union.node*, %union.node** %1, align 8
  %8 = bitcast %union.node* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* @wordtext, align 4
  %11 = load %union.node*, %union.node** %1, align 8
  %12 = bitcast %union.node* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @backquotelist, align 4
  %15 = load %union.node*, %union.node** %1, align 8
  %16 = bitcast %union.node* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %union.node*, %union.node** %1, align 8
  ret %union.node* %18
}

declare dso_local i64 @stalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
