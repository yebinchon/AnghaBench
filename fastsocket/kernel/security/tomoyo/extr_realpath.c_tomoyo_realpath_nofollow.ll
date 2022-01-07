; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_realpath.c_tomoyo_realpath_nofollow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_realpath.c_tomoyo_realpath_nofollow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tomoyo_realpath_nofollow(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.path, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @kern_path(i8* %9, i32 0, %struct.path* %4)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = call i8* @tomoyo_realpath_from_path(%struct.path* %4)
  store i8* %13, i8** %5, align 8
  %14 = call i32 @path_put(%struct.path* %4)
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %2, align 8
  br label %17

16:                                               ; preds = %8, %1
  store i8* null, i8** %2, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i8*, i8** %2, align 8
  ret i8* %18
}

declare dso_local i64 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i8* @tomoyo_realpath_from_path(%struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
