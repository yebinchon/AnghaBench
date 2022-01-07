; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_options.c_hfsplus_fill_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_options.c_hfsplus_fill_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsplus_sb_info = type { i32, i32, i32, i32, i32, i8*, i8* }

@HFSPLUS_DEF_CR_TYPE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfsplus_fill_defaults(%struct.hfsplus_sb_info* %0) #0 {
  %2 = alloca %struct.hfsplus_sb_info*, align 8
  store %struct.hfsplus_sb_info* %0, %struct.hfsplus_sb_info** %2, align 8
  %3 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %2, align 8
  %4 = icmp ne %struct.hfsplus_sb_info* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %26

6:                                                ; preds = %1
  %7 = load i8*, i8** @HFSPLUS_DEF_CR_TYPE, align 8
  %8 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %2, align 8
  %9 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %8, i32 0, i32 6
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** @HFSPLUS_DEF_CR_TYPE, align 8
  %11 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %2, align 8
  %12 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %11, i32 0, i32 5
  store i8* %10, i8** %12, align 8
  %13 = call i32 (...) @current_umask()
  %14 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %2, align 8
  %15 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = call i32 (...) @current_uid()
  %17 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %2, align 8
  %18 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @current_gid()
  %20 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %2, align 8
  %21 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %2, align 8
  %23 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %2, align 8
  %25 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  br label %26

26:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @current_umask(...) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @current_gid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
