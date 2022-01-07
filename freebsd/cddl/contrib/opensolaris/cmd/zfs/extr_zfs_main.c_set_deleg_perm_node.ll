; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_set_deleg_perm_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_set_deleg_perm_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }

@B_TRUE = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32, i8*, i8)* @set_deleg_perm_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_deleg_perm_node(i32* %0, %struct.TYPE_9__* %1, i32 %2, i8* %3, i8 signext %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8 %4, i8* %10, align 1
  store i32 0, i32* %11, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @deleg_perm_init(%struct.TYPE_8__* %16, i32 %17, i8* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = call %struct.TYPE_9__* @uu_avl_find(i32* %20, %struct.TYPE_9__* %21, i32* null, i32* %11)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %12, align 8
  %23 = icmp eq %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @uu_avl_insert(i32* %25, %struct.TYPE_9__* %26, i32 %27)
  br label %33

29:                                               ; preds = %5
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %7, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %13, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i8, i8* %10, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %45 [
    i32 129, label %36
    i32 130, label %40
    i32 128, label %44
  ]

36:                                               ; preds = %33
  %37 = load i8*, i8** @B_TRUE, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %48

40:                                               ; preds = %33
  %41 = load i8*, i8** @B_TRUE, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %48

44:                                               ; preds = %33
  br label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @B_FALSE, align 4
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %45, %44, %40, %36
  ret void
}

declare dso_local i32 @deleg_perm_init(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local %struct.TYPE_9__* @uu_avl_find(i32*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @uu_avl_insert(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
