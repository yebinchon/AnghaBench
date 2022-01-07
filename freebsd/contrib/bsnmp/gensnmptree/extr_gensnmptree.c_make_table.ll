; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_make_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_make_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%stree.h\00", align 1
@file_prefix = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@PREFIX_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"\0A#ifdef SNMPTREE_TYPES\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\0A#endif /* SNMPTREE_TYPES */\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"#define %sCTREE_SIZE %u\0A\00", align 1
@tree_size = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"extern const struct snmp_node %sctree[];\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%stree.c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node*, i32)* @make_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_table(%struct.node* %0, i32 %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i8*, i8** @file_prefix, align 8
  %14 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.node*, %struct.node** %3, align 8
  %22 = load i32, i32* @PREFIX_LEN, align 4
  %23 = call i32 @gen_header(i32* %20, %struct.node* %21, i32 %22, i32* null)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @gen_enums(i32* %26, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** @file_prefix, align 8
  %33 = load i32, i32* @tree_size, align 4
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** @file_prefix, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i8*, i8** @file_prefix, align 8
  %41 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %40)
  %42 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %42, i32** %5, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %19
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %46

46:                                               ; preds = %44, %19
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.node*, %struct.node** %3, align 8
  %49 = call i32 @gen_table(i32* %47, %struct.node* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %52)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @gen_header(i32*, %struct.node*, i32, i32*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @gen_enums(i32*, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @gen_table(i32*, %struct.node*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
