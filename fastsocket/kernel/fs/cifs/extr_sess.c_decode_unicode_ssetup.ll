; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_decode_unicode_ssetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_decode_unicode_ssetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32, i32 }
%struct.nls_table = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"bleft %d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"serverOS=%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"serverNOS=%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"serverDomain=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, %struct.cifs_ses*, %struct.nls_table*)* @decode_unicode_ssetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_unicode_ssetup(i8** %0, i32 %1, %struct.cifs_ses* %2, %struct.nls_table* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_ses*, align 8
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cifs_ses* %2, %struct.cifs_ses** %7, align 8
  store %struct.nls_table* %3, %struct.nls_table** %8, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %16 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kfree(i32 %17)
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %22 = call i8* @cifs_strndup_from_ucs(i8* %19, i32 %20, i32 1, %struct.nls_table* %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %25 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %27 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %10, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %6, align 4
  %33 = sdiv i32 %32, 2
  %34 = call i32 @UniStrnlen(i32* %31, i32 %33)
  %35 = mul nsw i32 %34, 2
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  br label %96

47:                                               ; preds = %4
  %48 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %49 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kfree(i32 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %55 = call i8* @cifs_strndup_from_ucs(i8* %52, i32 %53, i32 1, %struct.nls_table* %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %58 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %60 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** %10, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load i32, i32* %6, align 4
  %66 = sdiv i32 %65, 2
  %67 = call i32 @UniStrnlen(i32* %64, i32 %66)
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %10, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %47
  br label %96

80:                                               ; preds = %47
  %81 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %82 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @kfree(i32 %83)
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %88 = call i8* @cifs_strndup_from_ucs(i8* %85, i32 %86, i32 1, %struct.nls_table* %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %91 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %93 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %80, %79, %46
  ret void
}

declare dso_local i32 @cFYI(i32, i8*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i8* @cifs_strndup_from_ucs(i8*, i32, i32, %struct.nls_table*) #1

declare dso_local i32 @UniStrnlen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
