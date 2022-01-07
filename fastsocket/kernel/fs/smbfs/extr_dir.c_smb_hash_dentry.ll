; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_hash_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_hash_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*)* @smb_hash_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_hash_dentry(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %7 = call i64 (...) @init_name_hash()
  store i64 %7, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.qstr*, %struct.qstr** %4, align 8
  %11 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load %struct.qstr*, %struct.qstr** %4, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @tolower(i32 %21) #3
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @partial_name_hash(i32 %22, i64 %23)
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @end_name_hash(i64 %29)
  %31 = load %struct.qstr*, %struct.qstr** %4, align 8
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  ret i32 0
}

declare dso_local i64 @init_name_hash(...) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
