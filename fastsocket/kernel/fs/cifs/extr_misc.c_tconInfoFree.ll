; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_tconInfoFree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_tconInfoFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.cifs_tcon*, %struct.cifs_tcon* }

@.str = private unnamed_addr constant [35 x i8] c"Null buffer passed to tconInfoFree\00", align 1
@tconInfoAllocCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tconInfoFree(%struct.cifs_tcon* %0) #0 {
  %2 = alloca %struct.cifs_tcon*, align 8
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %2, align 8
  %3 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %4 = icmp eq %struct.cifs_tcon* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %33

7:                                                ; preds = %1
  %8 = call i32 @atomic_dec(i32* @tconInfoAllocCount)
  %9 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %10 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %9, i32 0, i32 1
  %11 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %12 = call i32 @kfree(%struct.cifs_tcon* %11)
  %13 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %14 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %13, i32 0, i32 0
  %15 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %16 = icmp ne %struct.cifs_tcon* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %7
  %18 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %19 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %18, i32 0, i32 0
  %20 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %21 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %22 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %21, i32 0, i32 0
  %23 = load %struct.cifs_tcon*, %struct.cifs_tcon** %22, align 8
  %24 = call i32 @strlen(%struct.cifs_tcon* %23)
  %25 = call i32 @memset(%struct.cifs_tcon* %20, i32 0, i32 %24)
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %27 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %26, i32 0, i32 0
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %27, align 8
  %29 = call i32 @kfree(%struct.cifs_tcon* %28)
  br label %30

30:                                               ; preds = %17, %7
  %31 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %32 = call i32 @kfree(%struct.cifs_tcon* %31)
  br label %33

33:                                               ; preds = %30, %5
  ret void
}

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.cifs_tcon*) #1

declare dso_local i32 @memset(%struct.cifs_tcon*, i32, i32) #1

declare dso_local i32 @strlen(%struct.cifs_tcon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
