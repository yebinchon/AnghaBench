; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_sesInfoFree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_sesInfoFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.cifs_ses*, %struct.cifs_ses*, %struct.cifs_ses*, %struct.cifs_ses*, %struct.cifs_ses*, %struct.cifs_ses* }

@.str = private unnamed_addr constant [34 x i8] c"Null buffer passed to sesInfoFree\00", align 1
@sesInfoAllocCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sesInfoFree(%struct.cifs_ses* %0) #0 {
  %2 = alloca %struct.cifs_ses*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %2, align 8
  %3 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %4 = icmp eq %struct.cifs_ses* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %49

7:                                                ; preds = %1
  %8 = call i32 @atomic_dec(i32* @sesInfoAllocCount)
  %9 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %10 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %9, i32 0, i32 5
  %11 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %12 = call i32 @kfree(%struct.cifs_ses* %11)
  %13 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %14 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %13, i32 0, i32 4
  %15 = load %struct.cifs_ses*, %struct.cifs_ses** %14, align 8
  %16 = call i32 @kfree(%struct.cifs_ses* %15)
  %17 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %18 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %17, i32 0, i32 3
  %19 = load %struct.cifs_ses*, %struct.cifs_ses** %18, align 8
  %20 = call i32 @kfree(%struct.cifs_ses* %19)
  %21 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %22 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %21, i32 0, i32 2
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %22, align 8
  %24 = icmp ne %struct.cifs_ses* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %7
  %26 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %27 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %26, i32 0, i32 2
  %28 = load %struct.cifs_ses*, %struct.cifs_ses** %27, align 8
  %29 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %30 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %29, i32 0, i32 2
  %31 = load %struct.cifs_ses*, %struct.cifs_ses** %30, align 8
  %32 = call i32 @strlen(%struct.cifs_ses* %31)
  %33 = call i32 @memset(%struct.cifs_ses* %28, i32 0, i32 %32)
  %34 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %35 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %34, i32 0, i32 2
  %36 = load %struct.cifs_ses*, %struct.cifs_ses** %35, align 8
  %37 = call i32 @kfree(%struct.cifs_ses* %36)
  br label %38

38:                                               ; preds = %25, %7
  %39 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %40 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %39, i32 0, i32 1
  %41 = load %struct.cifs_ses*, %struct.cifs_ses** %40, align 8
  %42 = call i32 @kfree(%struct.cifs_ses* %41)
  %43 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %44 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %43, i32 0, i32 0
  %45 = load %struct.cifs_ses*, %struct.cifs_ses** %44, align 8
  %46 = call i32 @kfree(%struct.cifs_ses* %45)
  %47 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %48 = call i32 @kfree(%struct.cifs_ses* %47)
  br label %49

49:                                               ; preds = %38, %5
  ret void
}

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.cifs_ses*) #1

declare dso_local i32 @memset(%struct.cifs_ses*, i32, i32) #1

declare dso_local i32 @strlen(%struct.cifs_ses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
