; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_netdev.c_ieee80211_debugfs_add_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_netdev.c_ieee80211_debugfs_add_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i8*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"netdev:%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stations\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_debugfs_add_netdev(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = load i32, i32* @IFNAMSIZ, align 4
  %6 = add nsw i32 10, %5
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @debugfs_create_dir(i8* %9, i8* %21)
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  br label %40

40:                                               ; preds = %31, %1
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %42 = call i32 @add_files(%struct.ieee80211_sub_if_data* %41)
  %43 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %43)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i8* @debugfs_create_dir(i8*, i8*) #2

declare dso_local i32 @add_files(%struct.ieee80211_sub_if_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
