; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_journal_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_journal_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_bucket = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ocfs2_xattr_bucket*)* @ocfs2_xattr_bucket_journal_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xattr_bucket_journal_dirty(i32* %0, %struct.ocfs2_xattr_bucket* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %4, align 8
  %6 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %7 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_6__* @OCFS2_SB(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %15 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %23 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %26 = call %struct.TYPE_5__* @bucket_xh(%struct.ocfs2_xattr_bucket* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @ocfs2_compute_meta_ecc_bhs(i32 %18, i32* %21, i32 %24, i32* %27)
  %29 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %30 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_6__* @OCFS2_SB(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %53, %2
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %46 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ocfs2_journal_dirty(i32* %44, i32 %51)
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %37

56:                                               ; preds = %37
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_compute_meta_ecc_bhs(i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
