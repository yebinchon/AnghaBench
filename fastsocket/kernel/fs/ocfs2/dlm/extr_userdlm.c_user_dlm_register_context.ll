; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_dlm_register_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_dlm_register_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.dlm_protocol_version = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dlm_ctxt* @user_dlm_register_context(%struct.qstr* %0, %struct.dlm_protocol_version* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.dlm_protocol_version*, align 8
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.qstr* %0, %struct.qstr** %4, align 8
  store %struct.dlm_protocol_version* %1, %struct.dlm_protocol_version** %5, align 8
  %9 = load %struct.qstr*, %struct.qstr** %4, align 8
  %10 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call i8* @kmalloc(i8* %12, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @mlog_errno(i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.dlm_ctxt* @ERR_PTR(i32 %22)
  store %struct.dlm_ctxt* %23, %struct.dlm_ctxt** %3, align 8
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.qstr*, %struct.qstr** %4, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qstr*, %struct.qstr** %4, align 8
  %29 = getelementptr inbounds %struct.qstr, %struct.qstr* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @crc32_le(i32 0, i32 %27, i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.qstr*, %struct.qstr** %4, align 8
  %34 = getelementptr inbounds %struct.qstr, %struct.qstr* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load %struct.qstr*, %struct.qstr** %4, align 8
  %38 = getelementptr inbounds %struct.qstr, %struct.qstr* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.qstr*, %struct.qstr** %4, align 8
  %41 = getelementptr inbounds %struct.qstr, %struct.qstr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snprintf(i8* %32, i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %5, align 8
  %47 = call %struct.dlm_ctxt* @dlm_register_domain(i8* %44, i32 %45, %struct.dlm_protocol_version* %46)
  store %struct.dlm_ctxt* %47, %struct.dlm_ctxt** %6, align 8
  %48 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %49 = call i64 @IS_ERR(%struct.dlm_ctxt* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %24
  %52 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %53 = call i32 @PTR_ERR(%struct.dlm_ctxt* %52)
  %54 = call i32 @mlog_errno(i32 %53)
  br label %55

55:                                               ; preds = %51, %24
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @kfree(i8* %56)
  %58 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_ctxt* %58, %struct.dlm_ctxt** %3, align 8
  br label %59

59:                                               ; preds = %55, %17
  %60 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  ret %struct.dlm_ctxt* %60
}

declare dso_local i8* @kmalloc(i8*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.dlm_ctxt* @ERR_PTR(i32) #1

declare dso_local i32 @crc32_le(i32, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i8*, i8*, i8*, i32) #1

declare dso_local %struct.dlm_ctxt* @dlm_register_domain(i8*, i32, %struct.dlm_protocol_version*) #1

declare dso_local i64 @IS_ERR(%struct.dlm_ctxt*) #1

declare dso_local i32 @PTR_ERR(%struct.dlm_ctxt*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
