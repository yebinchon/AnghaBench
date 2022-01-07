; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [621 x i8] c"Usage:\09%s [-AbcdDFGhikLMPsvX] [-e [-V] [-p <path> ...]] [-I <inflight I/Os>]\0A\09\09[-o <var>=<value>]... [-t <txg>] [-U <cache>] [-x <dumpdir>]\0A\09\09[<poolname> [<object> ...]]\0A\09%s [-AdiPv] [-e [-V] [-p <path> ...]] [-U <cache>] <dataset> [<object> ...]\0A\09%s -C [-A] [-U <cache>]\0A\09%s -l [-Aqu] <device>\0A\09%s -m [-AFLPX] [-e [-V] [-p <path> ...]] [-t <txg>] [-U <cache>]\0A\09\09<poolname> [<vdev> [<metaslab> ...]]\0A\09%s -O <dataset> <path>\0A\09%s -R [-A] [-e [-V] [-p <path> ...]] [-U <cache>]\0A\09\09<poolname> <vdev>:<offset>:<size>[:<flags>]\0A\09%s -E [-A] word0:word1:...:word15\0A\09%s -S [-AP] [-e [-V] [-p <path> ...]] [-U <cache>] <poolname>\0A\0A\00", align 1
@cmdname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"    Dataset name must include at least one separator character '/' or '@'\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"    If dataset name is specified, only that dataset is dumped\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"    If object numbers are specified, only those objects are dumped\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"    Options to control amount of output:\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"        -b block statistics\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"        -c checksum all metadata (twice for all data) blocks\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"        -C config (or cachefile if alone)\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"        -d dataset(s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"        -D dedup statistics\0A\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"        -E decode and display block from an embedded block pointer\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"        -h pool history\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"        -i intent logs\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"        -l read label contents\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"        -k examine the checkpointed state of the pool\0A\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"        -L disable leak tracking (do not load spacemaps)\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"        -m metaslabs\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"        -M metaslab groups\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"        -O perform object lookups by path\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"        -R read and display block from a device\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"        -s report stats on zdb's I/O\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"        -S simulate dedup to measure effect\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"        -v verbose (applies to all others)\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"    Below options are intended for use with other options:\0A\00", align 1
@.str.24 = private unnamed_addr constant [79 x i8] c"        -A ignore assertions (-A), enable panic recovery (-AA) or both (-AAA)\0A\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"        -e pool is exported/destroyed/has altroot/not in a cachefile\0A\00", align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"        -F attempt automatic rewind within safe range of transaction groups\0A\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"        -G dump zfs_dbgmsg buffer before exiting\0A\00", align 1
@.str.28 = private unnamed_addr constant [106 x i8] c"        -I <number of inflight I/Os> -- specify the maximum number of checksumming I/Os [default is 200]\0A\00", align 1
@.str.29 = private unnamed_addr constant [87 x i8] c"        -o <variable>=<value> set global variable to an unsigned 32-bit integer value\0A\00", align 1
@.str.30 = private unnamed_addr constant [74 x i8] c"        -p <path> -- use one or more with -e to specify path to vdev dir\0A\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"        -P print numbers in parseable form\0A\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"        -q don't print label contents\0A\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"        -t <txg> -- highest txg to use when searching for uberblocks\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"        -u uberblock\0A\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"        -U <cachefile_path> -- use alternate cachefile\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"        -V do verbatim import\0A\00", align 1
@.str.37 = private unnamed_addr constant [71 x i8] c"        -x <dumpdir> -- dump all read blocks into specified directory\0A\00", align 1
@.str.38 = private unnamed_addr constant [65 x i8] c"        -X attempt extreme rewind (does not work with dataset)\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [78 x i8] c"Specify an option more than once (e.g. -bb) to make only that option verbose\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"Default is to dump everything non-verbosely\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @cmdname, align 8
  %3 = load i8*, i8** @cmdname, align 8
  %4 = load i8*, i8** @cmdname, align 8
  %5 = load i8*, i8** @cmdname, align 8
  %6 = load i8*, i8** @cmdname, align 8
  %7 = load i8*, i8** @cmdname, align 8
  %8 = load i8*, i8** @cmdname, align 8
  %9 = load i8*, i8** @cmdname, align 8
  %10 = load i8*, i8** @cmdname, align 8
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([621 x i8], [621 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0))
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0))
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0))
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0))
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0))
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0))
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0))
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.24, i64 0, i64 0))
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0))
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.26, i64 0, i64 0))
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0))
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.28, i64 0, i64 0))
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.29, i64 0, i64 0))
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.30, i64 0, i64 0))
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0))
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0))
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.33, i64 0, i64 0))
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0))
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0))
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0))
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.37, i64 0, i64 0))
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.38, i64 0, i64 0))
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.39, i64 0, i64 0))
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0))
  %92 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
