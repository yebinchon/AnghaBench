; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c___add_jh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c___add_jh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_journal = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { %struct.reiserfs_jh* }
%struct.reiserfs_jh = type { %struct.TYPE_2__*, i32, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_journal*, %struct.buffer_head*, i32)* @__add_jh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_jh(%struct.reiserfs_journal* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca %struct.reiserfs_journal*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_jh*, align 8
  store %struct.reiserfs_journal* %0, %struct.reiserfs_journal** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %9, align 8
  %11 = icmp ne %struct.reiserfs_jh* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %14 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %17, align 8
  %19 = icmp ne %struct.reiserfs_jh* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %22 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  br label %32

24:                                               ; preds = %12
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %26, align 8
  store %struct.reiserfs_jh* %27, %struct.reiserfs_jh** %7, align 8
  %28 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %7, align 8
  %29 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %28, i32 0, i32 1
  %30 = call i32 @list_del_init(i32* %29)
  br label %49

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %34 = call i32 @get_bh(%struct.buffer_head* %33)
  %35 = call %struct.reiserfs_jh* (...) @alloc_jh()
  store %struct.reiserfs_jh* %35, %struct.reiserfs_jh** %7, align 8
  %36 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %37 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %40, align 8
  %42 = call i32 @BUG_ON(%struct.reiserfs_jh* %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %44 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %7, align 8
  %45 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %44, i32 0, i32 2
  store %struct.buffer_head* %43, %struct.buffer_head** %45, align 8
  %46 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %7, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  store %struct.reiserfs_jh* %46, %struct.reiserfs_jh** %48, align 8
  br label %49

49:                                               ; preds = %32, %24
  %50 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %51 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %7, align 8
  %54 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %53, i32 0, i32 0
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %7, align 8
  %59 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %58, i32 0, i32 1
  %60 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %7, align 8
  %61 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @list_add_tail(i32* %59, i32* %63)
  br label %73

65:                                               ; preds = %49
  %66 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %7, align 8
  %67 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %66, i32 0, i32 1
  %68 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %7, align 8
  %69 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %67, i32* %71)
  br label %73

73:                                               ; preds = %65, %57
  %74 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %75 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local %struct.reiserfs_jh* @alloc_jh(...) #1

declare dso_local i32 @BUG_ON(%struct.reiserfs_jh*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
