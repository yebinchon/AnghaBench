; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_dir.c_cifs_ci_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_dir.c_cifs_ci_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qstr = type { i32, i32, i32* }
%struct.nls_table = type { i32 }
%struct.TYPE_4__ = type { %struct.nls_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*)* @cifs_ci_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_ci_hash(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.nls_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_4__* @CIFS_SB(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.nls_table*, %struct.nls_table** %14, align 8
  store %struct.nls_table* %15, %struct.nls_table** %5, align 8
  %16 = call i64 (...) @init_name_hash()
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %35, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.qstr*, %struct.qstr** %4, align 8
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %25 = load %struct.qstr*, %struct.qstr** %4, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nls_tolower(%struct.nls_table* %24, i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @partial_name_hash(i32 %32, i64 %33)
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @end_name_hash(i64 %39)
  %41 = load %struct.qstr*, %struct.qstr** %4, align 8
  %42 = getelementptr inbounds %struct.qstr, %struct.qstr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @CIFS_SB(i32) #1

declare dso_local i64 @init_name_hash(...) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

declare dso_local i32 @nls_tolower(%struct.nls_table*, i32) #1

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
