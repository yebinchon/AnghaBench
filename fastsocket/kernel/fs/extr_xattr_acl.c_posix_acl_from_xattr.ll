; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_xattr_acl.c_posix_acl_from_xattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_xattr_acl.c_posix_acl_from_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.posix_acl_entry* }
%struct.posix_acl_entry = type { i32, i32, i8* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_VERSION = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACL_UNDEFINED_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @posix_acl_from_xattr(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca %struct.posix_acl_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 1
  %16 = bitcast %struct.TYPE_3__* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %116

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %21, 8
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.posix_acl* @ERR_PTR(i32 %25)
  store %struct.posix_acl* %26, %struct.posix_acl** %3, align 8
  br label %116

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @POSIX_ACL_XATTR_VERSION, align 4
  %32 = call i64 @cpu_to_le32(i32 %31)
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.posix_acl* @ERR_PTR(i32 %36)
  store %struct.posix_acl* %37, %struct.posix_acl** %3, align 8
  br label %116

38:                                               ; preds = %27
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @posix_acl_xattr_count(i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.posix_acl* @ERR_PTR(i32 %45)
  store %struct.posix_acl* %46, %struct.posix_acl** %3, align 8
  br label %116

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %116

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @GFP_NOFS, align 4
  %54 = call %struct.posix_acl* @posix_acl_alloc(i32 %52, i32 %53)
  store %struct.posix_acl* %54, %struct.posix_acl** %10, align 8
  %55 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %56 = icmp ne %struct.posix_acl* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.posix_acl* @ERR_PTR(i32 %59)
  store %struct.posix_acl* %60, %struct.posix_acl** %3, align 8
  br label %116

61:                                               ; preds = %51
  %62 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %63 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %62, i32 0, i32 0
  %64 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %63, align 8
  store %struct.posix_acl_entry* %64, %struct.posix_acl_entry** %11, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %8, align 8
  br label %69

69:                                               ; preds = %103, %61
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = icmp ne %struct.TYPE_4__* %70, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %69
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le16_to_cpu(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %11, align 8
  %80 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @le16_to_cpu(i32 %83)
  %85 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %11, align 8
  %86 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %11, align 8
  %88 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %101 [
    i32 128, label %90
    i32 132, label %90
    i32 131, label %90
    i32 130, label %90
    i32 129, label %94
    i32 133, label %94
  ]

90:                                               ; preds = %73, %73, %73, %73
  %91 = load i32, i32* @ACL_UNDEFINED_ID, align 4
  %92 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %11, align 8
  %93 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %102

94:                                               ; preds = %73, %73
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %11, align 8
  %100 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %102

101:                                              ; preds = %73
  br label %110

102:                                              ; preds = %94, %90
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %11, align 8
  %105 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %104, i32 1
  store %struct.posix_acl_entry* %105, %struct.posix_acl_entry** %11, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 1
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %7, align 8
  br label %69

108:                                              ; preds = %69
  %109 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  store %struct.posix_acl* %109, %struct.posix_acl** %3, align 8
  br label %116

110:                                              ; preds = %101
  %111 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %112 = call i32 @posix_acl_release(%struct.posix_acl* %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  %115 = call %struct.posix_acl* @ERR_PTR(i32 %114)
  store %struct.posix_acl* %115, %struct.posix_acl** %3, align 8
  br label %116

116:                                              ; preds = %110, %108, %57, %50, %43, %34, %23, %19
  %117 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %117
}

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @posix_acl_xattr_count(i64) #1

declare dso_local %struct.posix_acl* @posix_acl_alloc(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
