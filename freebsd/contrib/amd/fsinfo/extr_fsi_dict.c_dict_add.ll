; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_dict.c_dict_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_dict.c_dict_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dict_add(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.TYPE_8__* @dict_locate(%struct.TYPE_9__* %9, i8* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @dict_hash(i8* %18)
  %20 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %17, i64 %19
  store %struct.TYPE_8__** %20, %struct.TYPE_8__*** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.TYPE_8__* @new_dict_ent(i8* %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %28, align 8
  br label %29

29:                                               ; preds = %14, %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @dict_add_data(%struct.TYPE_8__* %30, i8* %31)
  ret void
}

declare dso_local %struct.TYPE_8__* @dict_locate(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @dict_hash(i8*) #1

declare dso_local %struct.TYPE_8__* @new_dict_ent(i8*) #1

declare dso_local i32 @dict_add_data(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
