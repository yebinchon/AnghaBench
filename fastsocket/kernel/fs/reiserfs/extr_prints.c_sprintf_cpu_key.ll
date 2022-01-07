; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_cpu_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_cpu_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"[%d %d %s %s]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[NULL]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cpu_key*)* @sprintf_cpu_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprintf_cpu_key(i8* %0, %struct.cpu_key* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cpu_key*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.cpu_key* %1, %struct.cpu_key** %4, align 8
  %5 = load %struct.cpu_key*, %struct.cpu_key** %4, align 8
  %6 = icmp ne %struct.cpu_key* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.cpu_key*, %struct.cpu_key** %4, align 8
  %10 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cpu_key*, %struct.cpu_key** %4, align 8
  %14 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cpu_key*, %struct.cpu_key** %4, align 8
  %18 = call i8* @reiserfs_cpu_offset(%struct.cpu_key* %17)
  %19 = load %struct.cpu_key*, %struct.cpu_key** %4, align 8
  %20 = call i8* @cpu_type(%struct.cpu_key* %19)
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i8* %18, i8* %20)
  br label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @reiserfs_cpu_offset(%struct.cpu_key*) #1

declare dso_local i8* @cpu_type(%struct.cpu_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
