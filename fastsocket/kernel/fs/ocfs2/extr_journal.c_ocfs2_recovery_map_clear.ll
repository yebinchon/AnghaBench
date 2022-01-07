; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_recovery_map_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_recovery_map_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_recovery_map* }
%struct.ocfs2_recovery_map = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, i32)* @ocfs2_recovery_map_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_recovery_map_clear(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_recovery_map*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 1
  %9 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %8, align 8
  store %struct.ocfs2_recovery_map* %9, %struct.ocfs2_recovery_map** %6, align 8
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %6, align 8
  %21 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %13

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %6, align 8
  %42 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %6, align 8
  %48 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %6, align 8
  %55 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memmove(i32* %46, i32* %53, i32 %62)
  %64 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %6, align 8
  %65 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %40, %34
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %70 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
