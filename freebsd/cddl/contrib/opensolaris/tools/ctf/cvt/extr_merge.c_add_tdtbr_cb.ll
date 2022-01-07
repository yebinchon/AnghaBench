; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_merge.c_add_tdtbr_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_merge.c_add_tdtbr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Remapping %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @add_tdtbr_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tdtbr_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %9, %struct.TYPE_7__*** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @tdesc_name(%struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @debug(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18)
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = call i32 @remap_node(%struct.TYPE_7__** %20, %struct.TYPE_7__* %22, i32 -1, i32* null, %struct.TYPE_8__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %32 = bitcast %struct.TYPE_7__** %31 to i8*
  %33 = call i32 @list_remove(i32 %30, i8* %32, i32* null, i32* null)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

declare dso_local i32 @tdesc_name(%struct.TYPE_7__*) #1

declare dso_local i32 @remap_node(%struct.TYPE_7__**, %struct.TYPE_7__*, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @list_remove(i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
