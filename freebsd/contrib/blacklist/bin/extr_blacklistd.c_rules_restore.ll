; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_blacklistd.c_rules_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_blacklistd.c_rules_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }
%struct.dbinfo = type { i8* }

@state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rules_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rules_restore() #0 {
  %1 = alloca %struct.conf, align 4
  %2 = alloca %struct.dbinfo, align 8
  %3 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %0
  %5 = load i32, i32* @state, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @state_iterate(i32 %5, %struct.conf* %1, %struct.dbinfo* %2, i32 %6)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dbinfo, %struct.dbinfo* %2, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %21

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.dbinfo, %struct.dbinfo* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @run_change(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.conf* %1, i8* %19, i32 8)
  br label %21

21:                                               ; preds = %17, %16
  store i32 0, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @state_iterate(i32, %struct.conf*, %struct.dbinfo*, i32) #1

declare dso_local i32 @run_change(i8*, %struct.conf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
