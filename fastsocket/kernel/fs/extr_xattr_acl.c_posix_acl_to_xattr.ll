; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_xattr_acl.c_posix_acl_to_xattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_xattr_acl.c_posix_acl_to_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8*, i8* }

@ERANGE = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_acl_to_xattr(%struct.posix_acl* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.posix_acl* %0, %struct.posix_acl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %9, align 8
  %17 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %18 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @posix_acl_xattr_size(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %85

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ERANGE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %85

33:                                               ; preds = %25
  %34 = load i32, i32* @POSIX_ACL_XATTR_VERSION, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %78, %33
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %41 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %38
  %45 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %46 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %57 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %68 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %44
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 1
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %9, align 8
  br label %38

83:                                               ; preds = %38
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %30, %23
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @posix_acl_xattr_size(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
