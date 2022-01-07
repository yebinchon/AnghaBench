; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_acl.c_ocfs2_acl_from_xattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_acl.c_ocfs2_acl_from_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.ocfs2_acl_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (i8*, i64)* @ocfs2_acl_from_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @ocfs2_acl_from_xattr(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.ocfs2_acl_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %92

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.posix_acl* @ERR_PTR(i32 %18)
  store %struct.posix_acl* %19, %struct.posix_acl** %3, align 8
  br label %92

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.posix_acl* @ERR_PTR(i32 %28)
  store %struct.posix_acl* %29, %struct.posix_acl** %3, align 8
  br label %92

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %92

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @GFP_NOFS, align 4
  %37 = call %struct.posix_acl* @posix_acl_alloc(i32 %35, i32 %36)
  store %struct.posix_acl* %37, %struct.posix_acl** %8, align 8
  %38 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %39 = icmp ne %struct.posix_acl* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.posix_acl* @ERR_PTR(i32 %42)
  store %struct.posix_acl* %43, %struct.posix_acl** %3, align 8
  br label %92

44:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %87, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = bitcast i8* %50 to %struct.ocfs2_acl_entry*
  store %struct.ocfs2_acl_entry* %51, %struct.ocfs2_acl_entry** %9, align 8
  %52 = load %struct.ocfs2_acl_entry*, %struct.ocfs2_acl_entry** %9, align 8
  %53 = getelementptr inbounds %struct.ocfs2_acl_entry, %struct.ocfs2_acl_entry* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le16_to_cpu(i32 %54)
  %56 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %57 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i8* %55, i8** %62, align 8
  %63 = load %struct.ocfs2_acl_entry*, %struct.ocfs2_acl_entry** %9, align 8
  %64 = getelementptr inbounds %struct.ocfs2_acl_entry, %struct.ocfs2_acl_entry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @le16_to_cpu(i32 %65)
  %67 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %68 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %66, i8** %73, align 8
  %74 = load %struct.ocfs2_acl_entry*, %struct.ocfs2_acl_entry** %9, align 8
  %75 = getelementptr inbounds %struct.ocfs2_acl_entry, %struct.ocfs2_acl_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %79 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %77, i32* %84, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr i8, i8* %85, i64 4
  store i8* %86, i8** %4, align 8
  br label %87

87:                                               ; preds = %49
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %45

90:                                               ; preds = %45
  %91 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %91, %struct.posix_acl** %3, align 8
  br label %92

92:                                               ; preds = %90, %40, %33, %26, %16, %12
  %93 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %93
}

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local %struct.posix_acl* @posix_acl_alloc(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
