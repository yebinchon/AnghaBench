; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dir_ent = type { %struct.autofs_dir_ent*, i64, %struct.TYPE_2__**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs_hash_delete(%struct.autofs_dir_ent* %0) #0 {
  %2 = alloca %struct.autofs_dir_ent*, align 8
  store %struct.autofs_dir_ent* %0, %struct.autofs_dir_ent** %2, align 8
  %3 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %2, align 8
  %4 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %2, align 8
  %7 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %8, align 8
  %9 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %2, align 8
  %10 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %2, align 8
  %15 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %2, align 8
  %18 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.TYPE_2__** %16, %struct.TYPE_2__*** %20, align 8
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %2, align 8
  %23 = call i32 @autofs_delete_usage(%struct.autofs_dir_ent* %22)
  %24 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %2, align 8
  %25 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %2, align 8
  %30 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dput(i64 %31)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %2, align 8
  %35 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %34, i32 0, i32 0
  %36 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %35, align 8
  %37 = call i32 @kfree(%struct.autofs_dir_ent* %36)
  %38 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %2, align 8
  %39 = call i32 @kfree(%struct.autofs_dir_ent* %38)
  ret void
}

declare dso_local i32 @autofs_delete_usage(%struct.autofs_dir_ent*) #1

declare dso_local i32 @dput(i64) #1

declare dso_local i32 @kfree(%struct.autofs_dir_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
