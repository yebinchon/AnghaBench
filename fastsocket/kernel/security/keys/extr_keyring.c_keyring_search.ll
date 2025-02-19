; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.key_type = type { i32 }

@ENOKEY = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyring_search(i32 %0, %struct.key_type* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.key_type*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.key_type* %1, %struct.key_type** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.key_type*, %struct.key_type** %6, align 8
  %9 = getelementptr inbounds %struct.key_type, %struct.key_type* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOKEY, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 @ERR_PTR(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.key_type*, %struct.key_type** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.key_type*, %struct.key_type** %6, align 8
  %24 = getelementptr inbounds %struct.key_type, %struct.key_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @keyring_search_aux(i32 %17, i32 %20, %struct.key_type* %21, i8* %22, i32 %25, i32 0)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %16, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @keyring_search_aux(i32, i32, %struct.key_type*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
