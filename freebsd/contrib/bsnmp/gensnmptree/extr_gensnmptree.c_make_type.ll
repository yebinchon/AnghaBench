; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_make_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_make_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.type = type { i32, i32, i8*, i32, i64, i8* }

@SNMP_SYNTAX_NULL = common dso_local global i32 0, align 4
@input = common dso_local global %struct.TYPE_2__* null, align 8
@types = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i8*)* @make_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @make_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.type*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.type* @xalloc(i32 40)
  store %struct.type* %4, %struct.type** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @savestr(i8* %5)
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = getelementptr inbounds %struct.type, %struct.type* %7, i32 0, i32 5
  store i8* %6, i8** %8, align 8
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = getelementptr inbounds %struct.type, %struct.type* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @SNMP_SYNTAX_NULL, align 4
  %12 = load %struct.type*, %struct.type** %3, align 8
  %13 = getelementptr inbounds %struct.type, %struct.type* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @savestr(i8* %16)
  %18 = load %struct.type*, %struct.type** %3, align 8
  %19 = getelementptr inbounds %struct.type, %struct.type* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.type*, %struct.type** %3, align 8
  %24 = getelementptr inbounds %struct.type, %struct.type* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.type*, %struct.type** %3, align 8
  %26 = getelementptr inbounds %struct.type, %struct.type* %25, i32 0, i32 0
  %27 = call i32 @TAILQ_INIT(i32* %26)
  %28 = load %struct.type*, %struct.type** %3, align 8
  %29 = load i32, i32* @link, align 4
  %30 = call i32 @LIST_INSERT_HEAD(i32* @types, %struct.type* %28, i32 %29)
  %31 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %31
}

declare dso_local %struct.type* @xalloc(i32) #1

declare dso_local i8* @savestr(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
