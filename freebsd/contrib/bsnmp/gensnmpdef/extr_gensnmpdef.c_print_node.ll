; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmpdef/extr_gensnmpdef.c_print_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmpdef/extr_gensnmpdef.c_print_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32* }

@SMI_NODEKIND_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"(%u \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64)* @print_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_node(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SMI_NODEKIND_NODE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = call i32 @save_node(%struct.TYPE_10__* %12)
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @pindent(i64 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = call i32 @print_name(%struct.TYPE_10__* %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = call %struct.TYPE_10__* @smiGetFirstChildNode(%struct.TYPE_10__* %26)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %3, align 8
  br label %28

28:                                               ; preds = %31, %2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  %35 = call i32 @print_it(%struct.TYPE_10__* %32, i64 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = call %struct.TYPE_10__* @smiGetNextChildNode(%struct.TYPE_10__* %36)
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %3, align 8
  br label %28

38:                                               ; preds = %28
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @pindent(i64 %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_node(%struct.TYPE_10__*) #1

declare dso_local i32 @pindent(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_name(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @smiGetFirstChildNode(%struct.TYPE_10__*) #1

declare dso_local i32 @print_it(%struct.TYPE_10__*, i64) #1

declare dso_local %struct.TYPE_10__* @smiGetNextChildNode(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
