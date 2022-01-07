; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_arch.c_Arch_MTime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_arch.c_Arch_MTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ar_hdr = type { i32 }

@ARCHIVE = common dso_local global i32 0, align 4
@MEMBER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Arch_MTime(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.ar_hdr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load i32, i32* @ARCHIVE, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = call i32 @Var_Value(i32 %7, %struct.TYPE_4__* %8, i8** %5)
  %10 = load i32, i32* @MEMBER, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = call i32 @Var_Value(i32 %10, %struct.TYPE_4__* %11, i8** %6)
  %13 = load i32, i32* @TRUE, align 4
  %14 = call %struct.ar_hdr* @ArchStatMember(i32 %9, i32 %12, i32 %13)
  store %struct.ar_hdr* %14, %struct.ar_hdr** %3, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @free(i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @free(i8* %17)
  %19 = load %struct.ar_hdr*, %struct.ar_hdr** %3, align 8
  %20 = icmp ne %struct.ar_hdr* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.ar_hdr*, %struct.ar_hdr** %3, align 8
  %23 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strtol(i32 %24, i32* null, i32 10)
  store i64 %25, i64* %4, align 8
  br label %27

26:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local %struct.ar_hdr* @ArchStatMember(i32, i32, i32) #1

declare dso_local i32 @Var_Value(i32, %struct.TYPE_4__*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
