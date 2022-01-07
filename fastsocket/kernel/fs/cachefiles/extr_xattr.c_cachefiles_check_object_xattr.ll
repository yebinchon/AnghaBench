; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_xattr.c_cachefiles_check_object_xattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_xattr.c_cachefiles_check_object_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_object = type { %struct.TYPE_6__, %struct.dentry* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.dentry = type { i32, %struct.dentry* }
%struct.cachefiles_xattr = type { i32, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p,#%d\00", align 1
@cachefiles_gfp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cachefiles_xattr_cache = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't read xattr on %lu (err %d)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"checkaux %s #%u\00", align 1
@XATTR_REPLACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Can't update xattr on %lu (error %d)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Cache object %lu xattr length incorrect\00", align 1
@EIO = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_check_object_xattr(%struct.cachefiles_object* %0, %struct.cachefiles_xattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_object*, align 8
  %5 = alloca %struct.cachefiles_xattr*, align 8
  %6 = alloca %struct.cachefiles_xattr*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cachefiles_object* %0, %struct.cachefiles_object** %4, align 8
  store %struct.cachefiles_xattr* %1, %struct.cachefiles_xattr** %5, align 8
  %11 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %12 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %11, i32 0, i32 1
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %7, align 8
  %14 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %15 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %16 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.cachefiles_object* %14, i32 %17)
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = call i32 @ASSERT(%struct.dentry* %19)
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = load %struct.dentry*, %struct.dentry** %22, align 8
  %24 = call i32 @ASSERT(%struct.dentry* %23)
  %25 = load i32, i32* @cachefiles_gfp, align 4
  %26 = call %struct.cachefiles_xattr* @kmalloc(i32 536, i32 %25)
  store %struct.cachefiles_xattr* %26, %struct.cachefiles_xattr** %6, align 8
  %27 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %28 = icmp ne %struct.cachefiles_xattr* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %159

33:                                               ; preds = %2
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = load i32, i32* @cachefiles_xattr_cache, align 4
  %36 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %37 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %36, i32 0, i32 1
  %38 = call i32 @vfs_getxattr(%struct.dentry* %34, i32 %35, i64* %37, i32 513)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ENODATA, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %156

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @ERANGE, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %147

53:                                               ; preds = %47
  %54 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %55 = load %struct.dentry*, %struct.dentry** %7, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 1
  %57 = load %struct.dentry*, %struct.dentry** %56, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @cachefiles_io_error_obj(%struct.cachefiles_object* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %61)
  br label %141

63:                                               ; preds = %33
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %147

67:                                               ; preds = %63
  %68 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %69 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %72 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %156

76:                                               ; preds = %67
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %79 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %81 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %139

89:                                               ; preds = %76
  %90 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %91 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %95 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %105 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %104, i32 0, i32 0
  %106 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %107 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %106, i32 0, i32 2
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @fscache_check_aux(%struct.TYPE_6__* %105, i32* %107, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  switch i32 %110, label %114 [
    i32 128, label %111
    i32 130, label %112
    i32 129, label %113
  ]

111:                                              ; preds = %89
  br label %140

112:                                              ; preds = %89
  br label %116

113:                                              ; preds = %89
  br label %156

114:                                              ; preds = %89
  %115 = call i32 (...) @BUG()
  br label %116

116:                                              ; preds = %114, %112
  %117 = load %struct.dentry*, %struct.dentry** %7, align 8
  %118 = load i32, i32* @cachefiles_xattr_cache, align 4
  %119 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %120 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %119, i32 0, i32 1
  %121 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %122 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @XATTR_REPLACE, align 4
  %125 = call i32 @vfs_setxattr(%struct.dentry* %117, i32 %118, i64* %120, i32 %123, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %116
  %129 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %130 = load %struct.dentry*, %struct.dentry** %7, align 8
  %131 = getelementptr inbounds %struct.dentry, %struct.dentry* %130, i32 0, i32 1
  %132 = load %struct.dentry*, %struct.dentry** %131, align 8
  %133 = getelementptr inbounds %struct.dentry, %struct.dentry* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i32 @cachefiles_io_error_obj(%struct.cachefiles_object* %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %136)
  br label %141

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138, %76
  br label %140

140:                                              ; preds = %139, %111
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %156, %147, %140, %128, %53
  %142 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %143 = call i32 @kfree(%struct.cachefiles_xattr* %142)
  %144 = load i32, i32* %8, align 4
  %145 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %159

147:                                              ; preds = %66, %52
  %148 = load %struct.dentry*, %struct.dentry** %7, align 8
  %149 = getelementptr inbounds %struct.dentry, %struct.dentry* %148, i32 0, i32 1
  %150 = load %struct.dentry*, %struct.dentry** %149, align 8
  %151 = getelementptr inbounds %struct.dentry, %struct.dentry* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @kerror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %8, align 4
  br label %141

156:                                              ; preds = %113, %75, %46
  %157 = load i32, i32* @ESTALE, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  br label %141

159:                                              ; preds = %141, %29
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @_enter(i8*, %struct.cachefiles_object*, i32) #1

declare dso_local i32 @ASSERT(%struct.dentry*) #1

declare dso_local %struct.cachefiles_xattr* @kmalloc(i32, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @vfs_getxattr(%struct.dentry*, i32, i64*, i32) #1

declare dso_local i32 @cachefiles_io_error_obj(%struct.cachefiles_object*, i8*, i32, i32) #1

declare dso_local i32 @_debug(i8*, i32, i32) #1

declare dso_local i32 @fscache_check_aux(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @vfs_setxattr(%struct.dentry*, i32, i64*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cachefiles_xattr*) #1

declare dso_local i32 @kerror(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
