; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattr.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"genattr\00", align 1
@progname = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"/* Generated automatically by the program `genattr'\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"   from the machine description file `md'.  */\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"#ifndef GCC_INSN_ATTR_H\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"#define GCC_INSN_ATTR_H\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"#define HAVE_ATTR_alternative\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"#define get_attr_alternative(insn) which_alternative\00", align 1
@DEFINE_ATTR = common dso_local global i64 0, align 8
@DEFINE_DELAY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"#define DELAY_SLOTS\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"extern int num_delay_slots (rtx);\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"extern int eligible_for_delay (rtx, int, rtx, int);\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"extern int const_num_delay_slots (rtx);\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"#define ANNUL_IFTRUE_SLOTS\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"extern int eligible_for_annul_true (rtx, int, rtx, int);\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"#define ANNUL_IFFALSE_SLOTS\0A\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"extern int eligible_for_annul_false (rtx, int, rtx, int);\0A\00", align 1
@DEFINE_INSN_RESERVATION = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [26 x i8] c"\0A#define INSN_SCHEDULING\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\0A/* DFA based pipeline interface.  */\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"\0A#ifndef AUTOMATON_ALTS\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"#define AUTOMATON_ALTS 0\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"#endif\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"\0A#ifndef AUTOMATON_STATE_ALTS\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"#define AUTOMATON_STATE_ALTS 0\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"#ifndef CPU_UNITS_QUERY\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"#define CPU_UNITS_QUERY 0\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"/* Internal insn code number used by automata.  */\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"extern int internal_dfa_insn_code (rtx);\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"/* Insn latency time defined in define_insn_reservation. */\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"extern int insn_default_latency (rtx);\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"/* Return nonzero if there is a bypass for given insn\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"   which is a data producer.  */\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"extern int bypass_p (rtx);\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"/* Insn latency time on data consumed by the 2nd insn.\0A\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"   Use the function if bypass_p returns nonzero for\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"   the 1st insn. */\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"extern int insn_latency (rtx, rtx);\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"\0A#if AUTOMATON_ALTS\0A\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"/* The following function returns number of alternative\0A\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"   reservations of given insn.  It may be used for better\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"   insns scheduling heuristics. */\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"extern int insn_alts (rtx);\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"/* Maximal possible number of insns waiting results being\0A\00", align 1
@.str.41 = private unnamed_addr constant [58 x i8] c"   produced by insns whose execution is not finished. */\0A\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"extern const int max_insn_queue_index;\0A\0A\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"/* Pointer to data describing current state of DFA.  */\0A\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"typedef void *state_t;\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"/* Size of the data in bytes.  */\0A\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"extern int state_size (void);\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"/* Initiate given DFA state, i.e. Set up the state\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"   as all functional units were not reserved.  */\0A\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"extern void state_reset (state_t);\0A\00", align 1
@.str.50 = private unnamed_addr constant [59 x i8] c"/* The following function returns negative value if given\0A\00", align 1
@.str.51 = private unnamed_addr constant [61 x i8] c"   insn can be issued in processor state described by given\0A\00", align 1
@.str.52 = private unnamed_addr constant [58 x i8] c"   DFA state.  In this case, the DFA state is changed to\0A\00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"   reflect the current and future reservations by given\0A\00", align 1
@.str.54 = private unnamed_addr constant [55 x i8] c"   insn.  Otherwise the function returns minimal time\0A\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"   delay to issue the insn.  This delay may be zero\0A\00", align 1
@.str.56 = private unnamed_addr constant [55 x i8] c"   for superscalar or VLIW processors.  If the second\0A\00", align 1
@.str.57 = private unnamed_addr constant [59 x i8] c"   parameter is NULL the function changes given DFA state\0A\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"   as new processor cycle started.  */\0A\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"extern int state_transition (state_t, rtx);\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"\0A#if AUTOMATON_STATE_ALTS\0A\00", align 1
@.str.61 = private unnamed_addr constant [54 x i8] c"/* The following function returns number of possible\0A\00", align 1
@.str.62 = private unnamed_addr constant [52 x i8] c"   alternative reservations of given insn in given\0A\00", align 1
@.str.63 = private unnamed_addr constant [59 x i8] c"   DFA state.  It may be used for better insns scheduling\0A\00", align 1
@.str.64 = private unnamed_addr constant [55 x i8] c"   heuristics.  By default the function is defined if\0A\00", align 1
@.str.65 = private unnamed_addr constant [54 x i8] c"   macro AUTOMATON_STATE_ALTS is defined because its\0A\00", align 1
@.str.66 = private unnamed_addr constant [48 x i8] c"   implementation may require much memory.  */\0A\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"extern int state_alts (state_t, rtx);\0A\00", align 1
@.str.68 = private unnamed_addr constant [44 x i8] c"extern int min_issue_delay (state_t, rtx);\0A\00", align 1
@.str.69 = private unnamed_addr constant [58 x i8] c"/* The following function returns nonzero if no one insn\0A\00", align 1
@.str.70 = private unnamed_addr constant [43 x i8] c"   can be issued in current DFA state. */\0A\00", align 1
@.str.71 = private unnamed_addr constant [41 x i8] c"extern int state_dead_lock_p (state_t);\0A\00", align 1
@.str.72 = private unnamed_addr constant [59 x i8] c"/* The function returns minimal delay of issue of the 2nd\0A\00", align 1
@.str.73 = private unnamed_addr constant [56 x i8] c"   insn after issuing the 1st insn in given DFA state.\0A\00", align 1
@.str.74 = private unnamed_addr constant [55 x i8] c"   The 1st insn should be issued in given state (i.e.\0A\00", align 1
@.str.75 = private unnamed_addr constant [55 x i8] c"    state_transition should return negative value for\0A\00", align 1
@.str.76 = private unnamed_addr constant [57 x i8] c"    the insn and the state).  Data dependencies between\0A\00", align 1
@.str.77 = private unnamed_addr constant [48 x i8] c"    the insns are ignored by the function.  */\0A\00", align 1
@.str.78 = private unnamed_addr constant [57 x i8] c"extern int min_insn_conflict_delay (state_t, rtx, rtx);\0A\00", align 1
@.str.79 = private unnamed_addr constant [58 x i8] c"/* The following function outputs reservations for given\0A\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"   insn as they are described in the corresponding\0A\00", align 1
@.str.81 = private unnamed_addr constant [33 x i8] c"   define_insn_reservation.  */\0A\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"extern void print_reservation (FILE *, rtx);\0A\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"\0A#if CPU_UNITS_QUERY\0A\00", align 1
@.str.84 = private unnamed_addr constant [59 x i8] c"/* The following function returns code of functional unit\0A\00", align 1
@.str.85 = private unnamed_addr constant [46 x i8] c"   with given name (see define_cpu_unit). */\0A\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"extern int get_cpu_unit_code (const char *);\0A\00", align 1
@.str.87 = private unnamed_addr constant [57 x i8] c"/* The following function returns nonzero if functional\0A\00", align 1
@.str.88 = private unnamed_addr constant [56 x i8] c"   unit with given code is currently reserved in given\0A\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"   DFA state.  */\0A\00", align 1
@.str.90 = private unnamed_addr constant [51 x i8] c"extern int cpu_unit_reservation_p (state_t, int);\0A\00", align 1
@.str.91 = private unnamed_addr constant [57 x i8] c"/* Clean insn code cache.  It should be called if there\0A\00", align 1
@.str.92 = private unnamed_addr constant [42 x i8] c"   is a chance that condition value in a\0A\00", align 1
@.str.93 = private unnamed_addr constant [50 x i8] c"   define_insn_reservation will be changed after\0A\00", align 1
@.str.94 = private unnamed_addr constant [32 x i8] c"   last call of dfa_start.  */\0A\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"extern void dfa_clean_insn_cache (void);\0A\0A\00", align 1
@.str.96 = private unnamed_addr constant [49 x i8] c"extern void dfa_clear_single_insn_cache (rtx);\0A\0A\00", align 1
@.str.97 = private unnamed_addr constant [55 x i8] c"/* Initiate and finish work with DFA.  They should be\0A\00", align 1
@.str.98 = private unnamed_addr constant [47 x i8] c"   called as the first and the last interface\0A\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"   functions.  */\0A\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"extern void dfa_start (void);\0A\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"extern void dfa_finish (void);\0A\00", align 1
@.str.102 = private unnamed_addr constant [32 x i8] c"\0A#define ATTR_FLAG_forward\090x1\0A\00", align 1
@.str.103 = private unnamed_addr constant [32 x i8] c"#define ATTR_FLAG_backward\090x2\0A\00", align 1
@.str.104 = private unnamed_addr constant [30 x i8] c"#define ATTR_FLAG_likely\090x4\0A\00", align 1
@.str.105 = private unnamed_addr constant [35 x i8] c"#define ATTR_FLAG_very_likely\090x8\0A\00", align 1
@.str.106 = private unnamed_addr constant [33 x i8] c"#define ATTR_FLAG_unlikely\090x10\0A\00", align 1
@.str.107 = private unnamed_addr constant [38 x i8] c"#define ATTR_FLAG_very_unlikely\090x20\0A\00", align 1
@.str.108 = private unnamed_addr constant [30 x i8] c"\0A#endif /* GCC_INSN_ATTR_H */\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i64 @init_md_reader_args(i32 %14, i8** %15)
  %17 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %20, i32* %3, align 4
  br label %222

21:                                               ; preds = %2
  %22 = call i32 @puts(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %27 = call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %28

28:                                               ; preds = %21, %99
  %29 = call i32* @read_md_rtx(i32* %12, i32* %13)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %100

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @GET_CODE(i32* %34)
  %36 = load i64, i64* @DEFINE_ATTR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @gen_attr(i32* %39)
  br label %99

41:                                               ; preds = %33
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @GET_CODE(i32* %42)
  %44 = load i64, i64* @DEFINE_DELAY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %51 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %52 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  %53 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %46
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %85, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @XVECLEN(i32* %57, i32 1)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %55
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i64 @XVECEXP(i32* %61, i32 1, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %71 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %66, %60
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 2
  %76 = call i64 @XVECEXP(i32* %73, i32 1, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %83 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %78, %72
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 3
  store i32 %87, i32* %11, align 4
  br label %55

88:                                               ; preds = %55
  br label %98

89:                                               ; preds = %41
  %90 = load i32*, i32** %6, align 8
  %91 = call i64 @GET_CODE(i32* %90)
  %92 = load i64, i64* @DEFINE_INSN_RESERVATION, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %97, %88
  br label %99

99:                                               ; preds = %98, %38
  br label %28

100:                                              ; preds = %32
  %101 = load i32, i32* %10, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %196

103:                                              ; preds = %100
  %104 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %105 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %106 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %107 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %108 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %109 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %110 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0))
  %111 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %112 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0))
  %113 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  %114 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %115 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0))
  %116 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0))
  %117 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i64 0, i64 0))
  %118 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  %119 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.28, i64 0, i64 0))
  %120 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0))
  %121 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0))
  %122 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i64 0, i64 0))
  %123 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i64 0, i64 0))
  %124 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0))
  %125 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i64 0, i64 0))
  %126 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0))
  %127 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.36, i64 0, i64 0))
  %128 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.37, i64 0, i64 0))
  %129 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0))
  %130 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0))
  %131 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %132 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.40, i64 0, i64 0))
  %133 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.41, i64 0, i64 0))
  %134 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0))
  %135 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.43, i64 0, i64 0))
  %136 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0))
  %137 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.45, i64 0, i64 0))
  %138 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i64 0, i64 0))
  %139 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.47, i64 0, i64 0))
  %140 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0))
  %141 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i64 0, i64 0))
  %142 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.50, i64 0, i64 0))
  %143 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.51, i64 0, i64 0))
  %144 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i64 0, i64 0))
  %145 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.53, i64 0, i64 0))
  %146 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.54, i64 0, i64 0))
  %147 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.55, i64 0, i64 0))
  %148 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.56, i64 0, i64 0))
  %149 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.57, i64 0, i64 0))
  %150 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.58, i64 0, i64 0))
  %151 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i64 0, i64 0))
  %152 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0))
  %153 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.61, i64 0, i64 0))
  %154 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.62, i64 0, i64 0))
  %155 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.63, i64 0, i64 0))
  %156 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.64, i64 0, i64 0))
  %157 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.65, i64 0, i64 0))
  %158 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.66, i64 0, i64 0))
  %159 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i64 0, i64 0))
  %160 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %161 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.68, i64 0, i64 0))
  %162 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.69, i64 0, i64 0))
  %163 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.70, i64 0, i64 0))
  %164 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.71, i64 0, i64 0))
  %165 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.72, i64 0, i64 0))
  %166 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0))
  %167 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.74, i64 0, i64 0))
  %168 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.75, i64 0, i64 0))
  %169 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.76, i64 0, i64 0))
  %170 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.77, i64 0, i64 0))
  %171 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.78, i64 0, i64 0))
  %172 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.79, i64 0, i64 0))
  %173 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.80, i64 0, i64 0))
  %174 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.81, i64 0, i64 0))
  %175 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.82, i64 0, i64 0))
  %176 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i64 0, i64 0))
  %177 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.84, i64 0, i64 0))
  %178 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.85, i64 0, i64 0))
  %179 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.86, i64 0, i64 0))
  %180 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.87, i64 0, i64 0))
  %181 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.88, i64 0, i64 0))
  %182 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.89, i64 0, i64 0))
  %183 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.90, i64 0, i64 0))
  %184 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %185 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.91, i64 0, i64 0))
  %186 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.92, i64 0, i64 0))
  %187 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.93, i64 0, i64 0))
  %188 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.94, i64 0, i64 0))
  %189 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0))
  %190 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.96, i64 0, i64 0))
  %191 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.97, i64 0, i64 0))
  %192 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.98, i64 0, i64 0))
  %193 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.99, i64 0, i64 0))
  %194 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i64 0, i64 0))
  %195 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.101, i64 0, i64 0))
  br label %198

196:                                              ; preds = %100
  %197 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %103
  %199 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.102, i64 0, i64 0))
  %200 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.103, i64 0, i64 0))
  %201 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.104, i64 0, i64 0))
  %202 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0))
  %203 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.106, i64 0, i64 0))
  %204 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.107, i64 0, i64 0))
  %205 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.108, i64 0, i64 0))
  %206 = load i32, i32* @stdout, align 4
  %207 = call i64 @ferror(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %217, label %209

209:                                              ; preds = %198
  %210 = load i32, i32* @stdout, align 4
  %211 = call i64 @fflush(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* @stdout, align 4
  %215 = call i64 @fclose(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213, %209, %198
  %218 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %218, i32* %3, align 4
  br label %222

219:                                              ; preds = %213
  %220 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %219, %217, %19
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32* @read_md_rtx(i32*, i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32 @gen_attr(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @XVECLEN(i32*, i32) #1

declare dso_local i64 @XVECEXP(i32*, i32, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fflush(i32) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
