; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_write_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_write_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i32, i32 }

@GCHD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"jhead %s, LEB %d:%d, len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i8*, i32, i32*, i32*, i32)* @write_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_head(%struct.ubifs_info* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.ubifs_wbuf* %24, %struct.ubifs_wbuf** %17, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @GCHD, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ubifs_assert(i32 %28)
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %13, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %48, %57
  %59 = load i32*, i32** %14, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @dbg_jhead(i32 %60)
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @dbg_jnl(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63, i32 %65, i32 %66)
  %68 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %17, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @ubifs_wbuf_write_nolock(%struct.ubifs_wbuf* %68, i8* %69, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %7
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %8, align 4
  br label %84

76:                                               ; preds = %7
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %17, align 8
  %81 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %80)
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %74
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @dbg_jnl(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @ubifs_wbuf_write_nolock(%struct.ubifs_wbuf*, i8*, i32) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
